---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font          = "FiraCode Nerd Font 12"

theme.taglist_font = "FiraCode Nerd Font 16"

theme.bg_normal     = "#00000000"
-- theme.bg_focus      = "#00000000"
-- theme.bg_urgent     = "#00000000"
-- theme.bg_minimize   = "#00000000"
-- theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#ffffff80"
theme.fg_focus      = "#ffffffff"
-- theme.fg_urgent     = "#ff0000aa"
-- theme.fg_minimize   = "#8888ff88"

theme.useless_gap   = dpi(4)
theme.border_width  = dpi(4)

theme.hotkeys_bg = "#2B2D3180"

theme.border_normal = "#0A0E14"
theme.border_focus  = "#94EE94"

theme.menu_height = dpi(16)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua

theme.wallpaper = os.getenv("PWD") .. "voidlinux_wallpaper.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = themes_path.."default/layouts/fairvw.png"
theme.layout_floating  = themes_path.."default/layouts/floatingw.png"
theme.layout_max = themes_path.."default/layouts/maxw.png"
theme.layout_tile = themes_path.."default/layouts/tilew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
-- theme.icon_theme = nil

return theme
