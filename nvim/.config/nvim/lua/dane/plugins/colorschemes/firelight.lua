return {
  'daneofmanythings/firelight.nvim',
  -- enabled = false,
  dev = true,
  -- dir = '$HOME/code/projects/firelight.nvim/',
  config = function()
    require('firelight').setup({
      palette_name = 'default',
      formatting = {
        Comment = {
          bold = false,
        },
      },
    })

    vim.cmd.colorscheme('firelight')
  end,
  -- dev = true,
  priority = 1000,
  -- branch = 'adding_hls',
  -- config = function()
  --   require('firelight').setup()
  --   vim.cmd.colorscheme('firelight')
  -- end,
}
