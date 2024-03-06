return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local icons = require('dane.static.icons')
    require('gitsigns').setup({
      signs = icons.gitsigns,
    })
  end,
}
