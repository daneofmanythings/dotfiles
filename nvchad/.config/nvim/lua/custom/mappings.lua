local M = {}

M.disabled = {
  n = {
    ["<leader>n"] = "",
  },
}

M.custom = {
  n = {
    ["<leader>qq"] = { "<cmd>qall<cr>", "Quit all" },
  },

  v = {
    [">"] = { ">gv", "indent" },
    ["<"] = { "<gv", "indent" },
  },

  i = {
    ["<C-s"] = { "<esc><cmd>w<cr>", "Save" },
  },
}

M.treesitter = {
  n = {},
}

M.neorg = {
  n = {
    ["<leader>ns"] = { "<cmd>Neorg index<cr>", desc = "Open Neorg root" },
    ["<leader>nq"] = { "<cmd>Neorg return<cr>", desc = "Close Neorg" },
    ["<leader>nt"] = { "<cmd>Neorg journal today<cr>", desc = "Open today's journal" },
    ["<leader>ny"] = { "<cmd>Neorg journal yesterday<cr>", desc = "Open yesterday's journal" },
    ["<leader>nm"] = { "<cmd>Neorg journal tomorrow<cr>", desc = "Open tomorrow's journal" },
  },
}

M.telescope = {
  n = {
    ["<leader>tf"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader>ta"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
    ["<leader>tw"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
    ["<leader>,"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
    ["<leader>th"] = { "<cmd> Telescope help_tags <CR>", "Help page" },
    ["<leader>to"] = { "<cmd> Telescope oldfiles <CR>", "Find oldfiles" },
    ["<leader>ts"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },

    -- git
    -- ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
    -- ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "Git status" },

    -- pick a hidden term
    -- ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "Pick hidden term" },

    -- theme switcher
    ["<leader>bb"] = { "<cmd> Telescope themes <CR>", "Nvchad themes" },

    -- ["<leader>ma"] = { "<cmd> Telescope marks <CR>", "telescope bookmarks" },
  },
}

M.flash = {
  n = {
    ["s"] = { "<cmd>lua require('flash').jump()<cr>", "Initialize flash text jump" },
    ["S"] = { "<cmd>lua require('flash').treesitter()<cr>", "Initialize flash treesitter jump" },
  },
  x = {
    ["s"] = { "<cmd>lua require('flash').jump()<cr>", "Initialize flash text jump" },
    ["S"] = { "<cmd>lua require('flash').treesitter()<cr>", "Initialize flash treesitter jump" },
    ["R"] = { "<cmd>lua require('flash').treesitter_search()<cr>", "Initialize flash treesitter search jump" },
  },
  o = {
    ["s"] = { "<cmd>lua require('flash').jump()<cr>", "Initialize flash text jump" },
    ["S"] = { "<cmd>lua require('flash').treesitter()<cr>", "Initialize flash treesitter jump" },
    ["r"] = { "<cmd>lua require('flash').remote()<cr>", "Initialize flash remote jump" },
    ["R"] = { "<cmd>lua require('flash').treesitter_search()<cr>", "Initialize flash treesitter search jump" },
  },
}

M.persistence = {
  -- stylua: ignore
  n = {
    ["<leader>qs"] = { "<cmd>lua require('persistence').load()<cr>", "Restore Session" },
    ["<leader>ql"] = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore Last Session" },
    ["<leader>qd"] = { "<cmd>lua require('persistence').stop()<cr>", "Don't Save Current Session" },
  },
}

return M
