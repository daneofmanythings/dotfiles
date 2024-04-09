return {
  'daneofmanythings/chalktone.nvim',
  -- enabled = false,
  priority = 1000,
  lazy = false,
  dev = true,
  -- branch = 'saturated',
  config = function()
    -- local C = require('chalktone.colors')
    -- local P = require('chalktone.palettes')
    -- local palette = P.generate_saturated()
    -- palette.func = '#ff0000'
    -- local blend = C.hex_blend_with_rgb

    require('chalktone').setup({
      theme = 'saturated',
      -- theme = 'default',
      -- palette = palette,
      formatting = {
        -- builtin_strings = {
        --   styling = { italic = false },
        -- },
        -- builtin_transparent = {
        --   styling = { bg = 'None' },
        -- },
      },
      format_by_group = {
        -- DiagnosticError = { bg = blend(palette.error_light, palette.bg_main, 0.85) },
      },
    })

    vim.cmd.colorscheme('chalktone')
  end,
}
