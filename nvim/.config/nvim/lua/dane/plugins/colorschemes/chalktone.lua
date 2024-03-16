return {
  'daneofmanythings/chalktone.nvim',
  -- enabled = false,
  -- dev = true,
  -- dir = '$HOME/code/projects/chalktone.nvim/',
  config = function()
    require('chalktone').setup({
      palette_name = 'default',
      formatting = {
        Comment = {
          bold = false,
        },
      },
    })

    vim.cmd.colorscheme('chalktone')
  end,
  -- dev = true,
  priority = 1000,
  -- branch = 'adding_hls',
  -- config = function()
  --   require('chalktone').setup()
  --   vim.cmd.colorscheme('chalktone')
  -- end,
}
