return {
  'mfussenegger/nvim-lint',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    local lint = require('lint')

    lint.formatters_by_ft = {
      python = { 'ruff_lsp', 'mypy' },
      lua = { 'luacheck' },
    }

    vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost', 'InsertLeave' }, {
      group = vim.api.nvim_create_augroup('linting', { clear = true }),
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
