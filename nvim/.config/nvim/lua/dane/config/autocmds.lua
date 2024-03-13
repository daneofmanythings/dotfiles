-- little flash when highlighting
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank({
      higroup = 'Visual',
      timeout = 75,
    })
  end,
})

-- Sets diagnostic signs for the gutter
vim.api.nvim_create_autocmd('VimEnter', {
  desc = 'Set Diagnostic Gutter Icons',
  group = vim.api.nvim_create_augroup('diagnostic-icons', { clear = true }),
  callback = function()
    local icons = require('dane.static.icons')
    for name, icon in pairs(icons.gutter_diagnostics) do
      local hl = 'DiagnosticSign' .. name
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
  end,
})
