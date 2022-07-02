local gears = require("gears")
local awful = require("awful")

require("ui.menu")

root.keys(gears.table.join(
  require("keys.global.apps"),
  require("keys.global.awesome"),
  require("keys.global.layout"),
  require("keys.global.screen"),
  require("keys.global.tag"),
  require("keys.global.media"),
  require("keys.global.client")
))

root.buttons(gears.table.join(
    awful.button({ }, 3, function () mymainmenu:toggle() end)
))
