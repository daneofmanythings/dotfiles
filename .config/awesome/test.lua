-- local utils = require("utils")
-- local wallpaper = require("wallpaper")

local bgs = '/home/dane/.config/awesome/backgrounds'

local get_images = function(path)
  local t = {}
  for file in io.popen('ls "' .. path .. '"'):lines() do
    table.insert(t, file)
  end
  return t
end

local images = get_images(bgs)
for _, image in pairs(images) do
  print(image)
end
