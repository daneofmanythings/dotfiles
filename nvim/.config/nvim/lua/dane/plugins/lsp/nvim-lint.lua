return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    local lint = require('lint')

    lint.formatters_by_ft = {
      python = { 'ruff', 'mypy' },
      -- lua = { 'selene' },
    }

    local lint_group = vim.api.nvim_create_augroup('linting', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost', 'InsertLeave' }, {
      group = lint_group,
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
