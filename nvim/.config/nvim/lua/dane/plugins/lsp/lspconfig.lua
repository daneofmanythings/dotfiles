return { -- :h lspconfig-all
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('lsp-keybinds', { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        end
        map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
        map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
        map('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
        map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
        map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
        map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
        map('<leader>cr', vim.lsp.buf.rename, '[C]ode [Rename]')
        map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
        map('K', vim.lsp.buf.hover, 'Hover Documentation')
        map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
      end,
    })

    -- enhancing the capabilities with nvim-cmp
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    -- Generic autocmd helper for setting up on_attach functions in the configs
    local on_attach_loader = function(on_attach)
      vim.api.nvim_create_autocmd('LspAttach', { -- :h LspAttach
        callback = function(args)
          local bufnr = args.buf
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          on_attach(client, bufnr)
        end,
      })
    end

    local lspconfig = require('lspconfig')
    local servers = {
      'lua_ls',
      'gopls',
      'clangd',
      'pyright',
      'ruff_lsp',
      'html',
      'cssls',
      'marksman',
    }

    -- Note: Hard coded relative path to the lsp configs.
    local load_lsp = function(lsp, c, oal)
      local config = require('dane.plugins.lsp.configs.' .. lsp)
      config.capabilities = c
      -- if there is an on_attach in the server config, create it as an autocmd
      if config.on_attach ~= nil then
        config.on_attach = oal(config.on_attach)
      end
      return config
    end

    -- Setting language server configurations.
    for _, server in ipairs(servers) do
      lspconfig[server].setup(load_lsp(server, capabilities, on_attach_loader))
    end
  end,
}
