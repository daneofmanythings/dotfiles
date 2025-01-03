return {
  'williamboman/mason.nvim',
  event = 'BufReadPost',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    require('mason').setup({
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    })

    require('mason-lspconfig').setup({
      ensure_installed = {
        -- Lua
        'lua_ls',
        -- Go
        'gopls',
        -- Python
        'basedpyright',
        'ruff',
        -- C++
        'clangd',
        -- Rust
        'rust_analyzer',
        -- HTML
        'html',
        -- CSS
        'cssls',
        -- Markdown
        'marksman',
        -- Bash
        'bashls',
      },
      automatic_installation = true,
    })

    -- TODO: Fix this. it is not installing those from ensure_installed.
    require('mason-tool-installer').setup({
      ensure_installed = {
        -- Lua
        'stylua',    -- formatter
        -- Go
        'gofumpt',   -- formatter
        'goimports', -- format imports
        -- Python
        -- 'black', -- formatter -- using ruff_lsp now
        -- 'ruff', -- general linter
        'mypy',         -- static typing linter
        -- C++
        'clang-format', -- formatter
        -- HTML, CSS
        'prettier',     -- formatter
        -- CSS
        'stylelint',    -- linter
        -- Bash
        'shellcheck',
      },
      auto_update = true,
    })
  end,
}
