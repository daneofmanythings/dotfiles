local opts = {
  providers = {
    "lsp",
    "treesitter",
    -- "regex",
  },
  -- delay: delay in milliseconds
  delay = 100,
  large_file_cutoff = 2000,
  -- large_file_config: config to use for large files (based on large_file_cutoff).
  -- Supports the same keys passed to .configure
  -- If nil, vim-illuminate will be disabled for large files.
  large_file_overrides = {
    providers = { "lsp" },
  },
}

return opts
