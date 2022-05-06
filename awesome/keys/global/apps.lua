local awful = require("awful")
local gears = require("gears")
local apps = require("config.apps")

return gears.table.join(
    awful.key(
      { modkey }, "Return", 
      function () awful.spawn(apps.terminal) end,
      {
        description = "open a terminal", 
        group = "launcher"
      }
    ),

    awful.key(
      { modkey }, "b", 
      function () awful.spawn(apps.browser) end,
      {
        description = "open a browser", 
        group = "launcher"
      }
    ),

    awful.key(
      { modkey }, "r",
      function () awful.spawn.with_shell(apps.launcher) end,
      {
        description = "run prompt", 
        group = "launcher"
      }
    ),

    awful.key(
      { modkey }, "Print",
      function () awful.spawn.with_shell(apps.flameshotFull) end,
      {
        description = "full screenshot", 
        group = "launcher"
      }
    )
)
