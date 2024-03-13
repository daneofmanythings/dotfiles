------------------------------------------------------
-- From Bash2Basics: Neovim Lua Plugin From Scratch --
------------------------------------------------------
P = function(a)
  print(vim.inspect(a))
  return a
end

RELOAD = function(...)
  return require('plenary.reload').reload_module(...)
end

R = function(module_name)
  RELOAD(module_name)
  print("module: '" .. module_name .. "' reloaded")
  return require(module_name)
end
------------------------------------------------------
--   https://www.youtube.com/watch?v=n4Lp4cV8YR0    --
------------------------------------------------------
