return {
  'savq/melange-nvim',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme('melange')

    -- Adjusting the highlight color for a transparent background.
    vim.api.nvim_set_hl(0, 'Visual', {
      bg = '#524f4c',
    })
  end,
}
