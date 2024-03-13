return {
  'catppuccin/nvim',
  enabled = false,
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      flavour = 'mocha',
      no_italic = true,
      -- integrations = {
      --   cmp = true,
      --   gitsigns = true,
      --   nvimtree = true,
      --   treesitter = true,
      --   mini = {
      --     indentscope_color = '',
      --   },
      -- },
    })
    vim.cmd.colorscheme('catppuccin')
    -- vim.api.nvim_set_hl(0, 'Normal', {
    --   bg = '',
    -- })
  end,
}
