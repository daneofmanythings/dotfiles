return {
  'stevearc/conform.nvim',
  event = { 'InsertEnter' },
  config = function()
    require('conform').setup({
      cmd = 'Conform',
      lsp_fallback = true,
      notify_on_error = false,

      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },

      formatters_by_ft = {
        lua = { 'stylua' },

        go = {
          'gofumpt',
          'goimports',
        },

        python = { 'black' },

        cpp = { 'clangd-format' },

        rust = { 'rust-analyzer' },
      },
    })
  end,
}
