return {
  'xiyaowong/transparent.nvim',
  event = { 'VimEnter' },
  config = function()
    local transparent = require('transparent')

    local prefixes = { 'lualine', 'NvimTree', 'Telescope', 'Cmp' }
    for _, prefix in ipairs(prefixes) do
      transparent.clear_prefix(prefix)
    end

    transparent.setup({
      exclude_groups = {
        -- 'Normal',
        'NormalNC',
        'Comment',
        'Constant',
        'Special',
        'Identifier',
        'Statement',
        'PreProc',
        'Type',
        'Underlined',
        'Todo',
        'String',
        'Function',
        'Conditional',
        'Repeat',
        'Operator',
        'Structure',
        'LineNr',
        'NonText',
        'SignColumn',
        'CursorLine',
        'CursorLineNr',
        'StatusLine',
        'StatusLineNC',
        'EndOfBuffer',
        'NvimTreeNormal',
      },
    })
  end,
}
