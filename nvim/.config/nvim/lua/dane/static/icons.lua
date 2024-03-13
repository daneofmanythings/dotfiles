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
  Info = M.diagnostics.info,
}

M.kind_icons = {
  Class = '󰠱',
  Color = '󰏘',
  Constant = '󰏿',
  Constructor = '',
  Enum = '',
  EnumMember = '',
  Event = '',
  Field = '󰇽',
  File = '󰈙',
  Folder = '󰉋',
  Function = '󰊕',
  Interface = '',
  Keyword = '󰌋',
  Method = '󰆧',
  Module = '',
  Operator = '󰆕',
  Property = '󰜢',
  Reference = '',
  Snippet = '',
  Struct = '',
  Text = '',
  TypeParameter = '󰅲',
  Unit = '',
  Value = '󰎠',
  Variable = '󰂡',
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
