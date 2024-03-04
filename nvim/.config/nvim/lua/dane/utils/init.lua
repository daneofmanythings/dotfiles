local lspconfigs = 'lua.dane.plugins.lspconfig.configs'
local colorschemes = 'lua.dane.plugins.colorschemes'

local M = {}

M.load_from_file = function(path, filename)
  return require(path .. '.' .. filename)
end

M.load_lsp = function(lsp)
  return M.load_from_file(lspconfigs, lsp)
end

M.load_colorscheme = function(scheme)
  return M.load_from_file(colorschemes, scheme)
end

return M
