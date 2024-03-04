return {
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    {
      'L3MON4D3/LuaSnip',
      build = (function() -- needed for regex support in snippets
        if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
          return
        end
        return 'make install_jsregexp'
      end)(),
      dependencies = 'rafamadriz/friendly-snippets',
      opts = { history = true, updateevents = 'TextChanged,TextChangedI' },
      config = function(_, opts)
        require('luasnip').config.set_config(opts)

        -- vscode format
        require('luasnip.loaders.from_vscode').lazy_load()
        require('luasnip.loaders.from_vscode').lazy_load { paths = vim.g.vscode_snippets_path or '' }

        -- snipmate format
        require('luasnip.loaders.from_snipmate').load()
        require('luasnip.loaders.from_snipmate').lazy_load { paths = vim.g.snipmate_snippets_path or '' }

        -- lua format
        require('luasnip.loaders.from_lua').load()
        require('luasnip.loaders.from_lua').lazy_load { paths = vim.g.lua_snippets_path or '' }

        vim.api.nvim_create_autocmd('InsertLeave', {
          callback = function()
            if require('luasnip').session.current_nodes[vim.api.nvim_get_current_buf()] and not require('luasnip').session.jump_active then
              require('luasnip').unlink_current()
            end
          end,
        })
      end,
    },
    {
      'windwp/nvim-autopairs',
      opts = {
        fast_wrap = {},
        disable_filetype = { 'TelescopePrompt', 'vim' },
      },
      config = function(_, opts)
        require('nvim-autopairs').setup(opts)

        local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
        require('cmp').event:on('confirm_done', cmp_autopairs.on_confirm_done())
      end,
    },
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    -- 'rafamadriz/friendly-snippets',
  },
  config = function()
    -- See `:help cmp`
    local cmp = require 'cmp'
    local luasnip = require 'luasnip'
    luasnip.config.setup {}

    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      completion = { completeopt = 'menu,menuone,noinsert' },

      mapping = cmp.mapping.preset.insert {
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<cr>'] = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Insert, select = true },
        ['<C-Space>'] = cmp.mapping.complete {},
        -- stylua @ignore
        ['<C-l>'] = cmp.mapping(function()
          if luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          end
        end, { 'i', 's' }),
        ['<C-h>'] = cmp.mapping(function()
          if luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          end
        end, { 'i', 's' }),
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
      },
    }
  end,
}
