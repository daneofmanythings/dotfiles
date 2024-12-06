return {
  'daneofmanythings/nvim-lint',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    local lint = require('lint')
    local api = vim.api

    lint.linters_by_ft = {
      python = { 'mypy' },
      lua = { 'luacheck' },
      css = { 'stylelint' },
      sh = { 'shellcheck' },
    }

    api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost', 'InsertLeave' }, {
      group = api.nvim_create_augroup('linting', { clear = true }),
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
