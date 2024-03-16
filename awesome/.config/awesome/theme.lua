---------------------------
-- Default awesome theme --
---------------------------

local utils = require("utils")
local backgrounds_path = "/home/dane/Pictures/Wallpapers/"

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font = "JetBrainsMonoNL Nerd Font 11"

-- -- Catppuccin foreground
-- theme.rosewater = "#F5E0DC"
-- theme.flamingo = "#F2CDCD"
-- theme.pink = "#F5C2E7"
-- theme.mauve = "#CBA6F7"
-- theme.red = "#F38BA8"
-- theme.maroon = "#EBA0AC"
-- theme.peach = "#FAB387"
-- theme.yellow = "#F9E2AF"
-- theme.green = "#A6E3A1"
-- theme.teal = "#94E2D5"
-- theme.sky = "#74C7EC"
-- theme.blue = "#87B2F9"
-- theme.lavender = "#B4BEFE"
--
-- -- Catppuccin background
-- theme.crust = "#11111B"
-- theme.mantle = "#181825"
-- theme.base = "#1E1E2E"
-- theme.surface0 = "#313244"
-- theme.surface1 = "#43465A"
-- theme.surface2 = "#565970"
-- theme.overlay0 = "#696D86"
-- theme.overlay1 = "#8E95B3"
-- theme.text = "#C6D0F5"

-- Streetchalk
theme.fg_main = "#ECE1D7"
theme.select_hl = "#524f4c"
theme.cursorline = "#403d3b"
theme.bg_washed = "#34302C"
theme.bg_main = "#292522"
theme.black = "#000000"

theme.comments = "#91908e"
theme.ui_accent = "#a08264"
theme.delimiter = "#d7b475"

theme.var_main = "#ECE1D7"
theme.func = "#9fc6b8"
theme.method = "#8fd1b9"
theme.string = "#9db2d2"
theme.type = "#f1b47e"
theme.field = "#fbdc98"
theme.keyword = "#cd88b8"
theme.constant = "#dfaad2" -- and numbers
theme.preproc = "#cfbfe3"
theme.operator = "#D47766"

theme.ok = "#78997A"
theme.warn = "#EBC06D"
theme.info = "#7F91B2"
theme.hint = "#9C848F"
theme.error_light = "#BD8183"
theme.error_dark = "#7D2A2F"

-- defaults
theme.bg_normal = theme.bg_main
theme.bg_focus = theme.select_hl
theme.bg_urgent = theme.operator
-- theme.bg_urgent                                 = "#ff0000"
theme.bg_minimize = "#444444"
theme.bg_systray = theme.bg_main

theme.fg_normal = "#aaaaaa"
theme.fg_focus = "#ffffff"
theme.fg_urgent = "#ffffff"
theme.fg_minimize = "#ffffff"

theme.useless_gap = dpi(3)
theme.border_width = dpi(4)
-- theme.border_normal                             = "#000000"
-- theme.border_focus                              = "#535d6c"
-- theme.border_marked                             = "#91231c"
theme.border_normal = theme.bg_main
theme.border_focus = theme.fg_main
theme.border_marked = theme.error_dark

-- Added settings to clean up the look of the taglist
theme.taglist_fg_focus = theme.bg_main
theme.taglist_bg_focus = theme.fg_main
theme.taglist_fg_occupied = theme.fg_main
theme.taglist_bg_occupied = theme.select_hl

-- Adding settings to the tasklist
theme.tasklist_bg_focus = theme.bg_normal

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
-- local taglist_square_size                       = dpi(6)
-- theme.taglist_squares_sel                       = theme_assets.taglist_squares_sel(
--     taglist_square_size, theme.teal
-- )
-- theme.taglist_squares_unsel                     = theme_assets.taglist_squares_unsel(
--     taglist_square_size, theme.teal
-- )

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Default Wallpaper
-- theme.wallpaper                                 = themes_path .. "default/background.png"

-- themes.wallpaper                                = utils.async_testing()
theme.wallpaper = utils.fixedBackground(backgrounds_path)
-- theme.wallpaper                                 = utils.chooseBackground(backgrounds_path)
-- theme.wallpaper                                 = backgrounds_path .. "island_sunset.jpg"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path .. "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus = themes_path .. "default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path .. "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = themes_path .. "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = themes_path .. "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path .. "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = themes_path .. "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = themes_path .. "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path .. "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = themes_path .. "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path .. "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = themes_path .. "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themes_path .. "default/titlebar/maximized_focus_active.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path .. "default/layouts/fairhw.png"
theme.layout_fairv = themes_path .. "default/layouts/fairvw.png"
theme.layout_floating = themes_path .. "default/layouts/floatingw.png"
theme.layout_magnifier = themes_path .. "default/layouts/magnifierw.png"
theme.layout_max = themes_path .. "default/layouts/maxw.png"
theme.layout_fullscreen = themes_path .. "default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path .. "default/layouts/tilebottomw.png"
theme.layout_tileleft = themes_path .. "default/layouts/tileleftw.png"
theme.layout_tile = themes_path .. "default/layouts/tilew.png"
theme.layout_tiletop = themes_path .. "default/layouts/tiletopw.png"
theme.layout_spiral = themes_path .. "default/layouts/spiralw.png"
theme.layout_dwindle = themes_path .. "default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path .. "default/layouts/cornernww.png"
theme.layout_cornerne = themes_path .. "default/layouts/cornernew.png"
theme.layout_cornersw = themes_path .. "default/layouts/cornersww.png"
theme.layout_cornerse = themes_path .. "default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.bg_focus, theme.fg_focus)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
