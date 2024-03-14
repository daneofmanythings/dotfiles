---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "melange",

  statusline = {
    theme = "default",
    separator_style = "block",
  },

  nvdash = {
    -- load_on_startup = true,
  },

  transparency = true,
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
