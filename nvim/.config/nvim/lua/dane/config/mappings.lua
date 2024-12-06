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

-- add executable permissions to current file
map('n', '<leader>xe', '<cmd>!chmod +x %<cr>', { desc = 'Add executable perms to file' })

-- Mappings for notes-utilities
map('n', '<leader>nt', '<cmd>.!nutils -cmd=title<cr>', { desc = 'Titlize the current line' })
map('n', '<leader>nd', '<cmd>.!nutils -cmd=date -datefmt=%Y<cr>', { desc = 'Insert the date on current line' })
map(
  'n',
  '<leader>nz',
  '<cmd>let title = input("What is the note about: ") | let fn = system("nutils -cmd=zet " . shellescape(title)) | execute "split " . fn<cr>',
  -- '<cmd>let title = input("What is the note about: ") | edit {title}<cr>',
  { desc = 'Create new Zettel' }
)
-- mapping to telescope thsough notes is in the keys section of the telescope config
