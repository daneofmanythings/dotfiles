local opts = {
  events = { "BufWritePost", "BufReadPost", "InsertLeave" },
  linters_by_ft = {
    python = { "ruff", "mypy" },
  },
}

return opts
