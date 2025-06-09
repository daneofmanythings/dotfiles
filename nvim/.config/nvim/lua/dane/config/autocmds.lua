-- little flash when highlighting
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('user-yank-highlighting', { clear = true }),
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


-- Adds borders to floating windows
vim.api.nvim_create_autocmd("WinNew", {
  callback = function()
    local win = vim.api.nvim_get_current_win()
    local config = vim.api.nvim_win_get_config(win)

    if config.relative ~= "win" then
      return
    end

    config.border = "rounded"
    vim.api.nvim_win_set_config(win, config)
  end,
})
