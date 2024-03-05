local lspconfigs = 'dane.plugins.lsp.configs'
local colorschemes = 'dane.plugins.colorschemes'

local M = {}

M.load_from_file = function(path, filename)
  return require(path .. '.' .. filename)
end

M.load_lsp = function(lsp, capabilities)
  local config = M.load_from_file(lspconfigs, lsp)
  config.capabilities = capabilities
  return config
end

M.load_colorscheme = function(scheme)
  return M.load_from_file(colorschemes, scheme)
end

return M
