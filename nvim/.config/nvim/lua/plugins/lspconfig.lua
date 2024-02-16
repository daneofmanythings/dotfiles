return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      emmet_language_server = {
        filetypes = {
          "template",
          "css",
          "eruby",
          "html",
          "less",
          "sass",
          "scss",
          "pug",
        },
      },
    },
  },
}
