local opt = vim.opt

opt.laststatus = 3
opt.showmode = false
opt.number = true
opt.wrap = false
opt.clipboard = 'unnamedplus'

opt.fillchars = { eob = ' ' }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = 'a'

opt.signcolumn = 'yes'
opt.updatetime = 250
opt.timeoutlen = 300
opt.updatetime = 250
opt.undolevels = 10000
opt.undofile = true

opt.splitright = true
opt.splitbelow = true

opt.list = true
opt.inccommand = 'split'

opt.scrolloff = 10
opt.sidescroll = 10
opt.virtualedit = 'block'
opt.cursorline = true

opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.smartindent = true
opt.expandtab = true
opt.shiftround = true

opt.hlsearch = true
opt.whichwrap:append '<>[]hl'
opt.termguicolors = true
opt.confirm = true
