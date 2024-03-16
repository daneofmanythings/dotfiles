local map = vim.keymap.set

map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
map('n', 'cd', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

map({ 'n', 'i', 'v' }, '<C-s>', '<esc><cmd>wa<cr>', { desc = 'Save' })
map('n', '<C-q>', '<cmd>:qall<esc>', { desc = 'Quit all' })
map('v', '>', '>gv', { desc = 'Better visual indenting' })
map('v', '<', '<gv', { desc = 'Better visual indenting' })

map('n', '<leader>tr', "<cmd>lua R('dane.plugins.colorschemes.chalktone')<cr>", { desc = 'Reloading module for testing' })
map('n', '<leader>tt', '<Plug>PlenaryTestFile', { desc = 'Running the current test file' })
