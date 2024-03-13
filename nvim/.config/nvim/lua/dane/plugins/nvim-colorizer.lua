return {
  'NvChad/nvim-colorizer.lua',
  enable = false,
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('colorizer').setup({
      user_default_options = {
        names = false,
      },
    })
  end,
}
