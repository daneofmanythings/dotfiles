local awful = require('awful')
local gears = require('gears')
local mod = require('bindings.mod')

local math, string = math, string

local get_images = function(path)
  local t = {}
  for file in io.popen('ls "' .. path .. '"'):lines() do
    table.insert(t, file)
  end
  return t
end

local change_wallpaper = function()
  local path = '/home/dane/.config/awesome/backgrounds/'
  local screen = awful.screen.focused()
  local img_names = get_images(path)
  local chosen_image = img_names[math.random(1, #img_names)]
  gears.wallpaper.maximized(path .. chosen_image, screen, false, { 0, 0 })
end


awful.keyboard.append_global_keybindings({
  awful.key({ mod.super, mod.alt }, 'w', function()
      change_wallpaper()
    end,
    { description = 'Change to random wallpaper', group = 'Awesome: extras' })
})

-- gears.wallpaper.maximized(path .. '/milky_way.jpg', screen, false, { 0, 0 })
