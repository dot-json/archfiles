local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local filesystem = require("gears.filesystem")
local gears = require("gears")
local dpi = xresources.apply_dpi
local colors = require("config.colors")
local theme_dir = filesystem.get_themes_dir()
local gtable = require("gears.table")
local dofile = dofile
local protected_call = require("gears.protected_call")

local default_theme = protected_call(dofile, theme_dir .. "default/theme.lua")
local theme = {}

gtable.crush(theme, default_theme)

icon_path = os.getenv("HOME") .. "/.config/awesome/ui/icons"

theme.useless_gap = dpi(6)
theme.border_width = 1 
theme.border_normal = colors.border
theme.border_focus = colors.border_fc
--theme.font = "JetBrains Mono Nerd Font Bold 14"
theme.font = "Roboto Bold 15"
theme.wibar_height = dpi(47)
theme.taglist_font = "Font Awesome 6 Free Solid 16"
theme.taglist_spacing = dpi(13)
theme.taglist_fg_empty = colors.inactive
theme.taglist_fg_occupied = colors.inactive
theme.taglist_fg_focus = colors.text
theme.taglist_fg_urgent = colors.accent
theme.taglist_bg_empty = gears.color.transparent
theme.taglist_bg_occupied = gears.color.transparent
theme.taglist_bg_focus = gears.color.transparent
theme.taglist_bg_urgent = gears.color.transparent

-- Notifications
theme.notification_font = "JetBrains Mono Nerd Font 14"
theme.notification_bg = colors.primary
theme.notification_fg = colors.text
theme.notification_border_width = 2
theme.notification_border_color = colors.accent
theme.notification_max_width = dpi(500)
theme.notification_max_height = dpi(200)
theme.notification_icon_size = dpi(180)

-- Hotkeys
theme.hotkeys_bg = colors.primary .. 'CC'
theme.hotkeys_border_color = colors.accent
theme.hotkeys_font = "JetBrains Mono Nerd Font 12"
theme.hotkeys_description_font = "JetBrains Mono Nerd Font 12"
theme.hotkeys_group_margin = dpi(16)
theme.hotkeys_label_bg = colors.accent_dark_1
theme.hotkeys_label_fg = colors.text
theme.hotkeys_fg = colors.inactive
theme.hotkeys_modifiers_fg = colors.accent

--menu
theme.menu_height = dpi(30)
theme.menu_width = dpi(240)
theme.menu_font = "JetBrains Mono Nerd Font Bold 15" 
theme.menu_bg_normal = colors.primary
theme.menu_fg_normal = colors.inactive
theme.menu_border_color = colors.border_fc

theme.menu_submenu_icon = icon_path.."/right.png"
theme.term_icon = icon_path.."/terminal.png"
theme.firefox_icon = icon_path.."/firefox1.png"
theme.discord_icon = icon_path.."/discord.png"
theme.files_icon = icon_path.."/folder.png"
theme.sys_icon = icon_path.."/pc.png"
theme.awm_icon = icon_path.."/awm.png"
theme.spotify_icon = icon_path.."/spotify.png"
theme.restart_icon = icon_path.."/restart.png"
theme.shutdown_icon = icon_path.."/shd.png"
theme.quit_icon = icon_path.."/quit.png"

return theme
