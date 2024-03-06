local M = {}

M.gitsigns = {
  add = { text = '▌' },
  change = { text = '▌' },
  delete = { text = '' },
  topdelete = { text = '' },
  changedelete = { text = '▌' },
  untracked = { text = '▌' },
}

M.gitdiff = {
  added = ' ',
  modified = ' ',
  removed = ' ',
}

M.diagnostics = {
  error = ' ',
  warn = ' ',
  hint = ' ',
  info = ' ',
}

-- Highlight groups have extended names compared to settings.
M.gutter_diagnostics = {
  Error = M.diagnostics.error,
  Warn = M.diagnostics.warn,
  Hint = M.diagnostics.hint,
  Information = M.diagnostics.info,
}

M.kind_icons = {
  Text = '',
  Method = '󰆧',
  Function = '󰊕',
  Constructor = '',
  Field = '󰇽',
  Variable = '󰂡',
  Class = '󰠱',
  Interface = '',
  Module = '',
  Property = '󰜢',
  Unit = '',
  Value = '󰎠',
  Enum = '',
  Keyword = '󰌋',
  Snippet = '',
  Color = '󰏘',
  File = '󰈙',
  Reference = '',
  Folder = '󰉋',
  EnumMember = '',
  Constant = '󰏿',
  Struct = '',
  Event = '',
  Operator = '󰆕',
  TypeParameter = '󰅲',
}

M.border = { -- https://www.w3.org/TR/xml-entity-names/025.html
  single_curved = {
    '╭',
    '─',
    '╮',
    '│',
    '╯',
    '─',
    '╰',
    '│',
  },
  double = {
    '╔',
    '═',
    '╗',
    '║',
    '╝',
    '═',
    '╚',
    '║',
  },
  side_double = {
    '╓',
    '─',
    '╖',
    '║',
    '╜',
    '─',
    '╙',
    '║',
  },
}

return M
