return {
  'williamboman/mason.nvim',
  event = 'VeryLazy',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    local mason = require 'mason'
    local mason_lspconfig = require 'mason-lspconfig'
    local mason_tools = require 'mason-tool-installer'

    mason.setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    }

    mason_lspconfig.setup {
      ensure_installed = {
        -- Lua
        'lua_ls',
        -- Go
        'gopls',
        -- Python
        'pyright',
        -- C++
        'clangd',
      },
      automatic_installation = true,
    }

    mason_tools.setup {
      ensure_installed = {
        -- Lua
        'stylua', -- formatter
        -- Go
        'gofumpt', -- formatter
        'goimports', -- organize imports
        -- Python
        'ruff', -- general linter
        'mypy', -- static typing linter
        -- C++
      },
    }
  end,
}
