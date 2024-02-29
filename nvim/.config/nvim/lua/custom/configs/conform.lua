local opts = {
  cmd = "Conform",
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },

    go = { "goimports", "gofumpt" },

    python = { "black" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(opts)
