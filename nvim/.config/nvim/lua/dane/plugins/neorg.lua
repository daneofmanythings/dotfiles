return {
  'nvim-neorg/neorg',
  build = ':Neorg sync-parsers',
  ft = 'norg',
  cmd = 'Neorg',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    -- { dir = '$HOME/code/projects/list_colors' }, -- custom module testing
  },
  keys = {
    { '<leader>ns', '<cmd>Neorg index<cr>', { desc = 'Open Neorg root' } },
    { '<leader>nq', '<cmd>Neorg return<cr>', { desc = 'Close Neorg' } },
    { '<leader>nt', '<cmd>Neorg journal today<cr>', { desc = "Open today's journal" } },
    { '<leader>ny', '<cmd>Neorg journal yesterday<cr>', { desc = "Open yesterday's journal" } },
    { '<leader>nm', '<cmd>Neorg journal tomorrow<cr>', { desc = "Open tomorrow's journal" } },
  },
  opts = {
    load = {
      ['core.defaults'] = {},
      ['core.concealer'] = { config = { icon_preset = 'diamond' } },
      ['core.dirman'] = {
        config = {
          workspaces = {
            main = '$HOME/notes',
            journal = '$HOME/notes/journal',
          },
          default_workspace = 'main',
        },
      },
      ['core.summary'] = {},
      ['core.journal'] = {
        config = {
          strategy = function()
            return '%Y/%b/%Y-%m-%d.norg'
          end,
        },
      },
      -- ['external.list-colors'] = { config = { name = 'Dane' } },
    },
  },
}
