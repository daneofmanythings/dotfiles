local opts = {
  load = {
    ["core.defaults"] = {},
    ["core.concealer"] = {
      config = {
        icon_preset = "diamond",
      },
    },
    ["core.dirman"] = {
      config = {
        workspaces = {
          main = "$HOME/notes",
          journal = "$HOME/notes/journal",
        },
        default_workspace = "main",
      },
    },
    ["core.summary"] = {},
    ["core.journal"] = {
      config = {
        strategy = function()
          return "%Y/%b/%Y-%m-%d.norg"
        end,
      },
    },
    ["external.list-colors"] = {
      config = {
        name = "Dane",
      },
    },
  },
}

return opts
