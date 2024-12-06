return { -- https://github.com/microsoft/pyright/blob/main/docs/settings.md
  settings = {
    pyright = {
      disableOrganizeImports = true,
      autoImportCompletion = true,
    },
    python = {
      analysis = {
        -- typeCheckingMode = 'strict',
        ignore = { '*' },
      },
    },
  },
}
