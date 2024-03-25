return {
  'EdenEast/nightfox.nvim',
  enabled = false,
  priority = 1000,
  lazy = false,
  config = function()
    require('nightfox').setup()
    vim.cmd.colorscheme('nightfox')
  end,
}
