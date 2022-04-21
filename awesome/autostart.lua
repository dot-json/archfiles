local awful = require("awful")

awful.spawn.with_shell("picom -f -b")
awful.spawn.with_shell("nitrogen --restore")
awful.spawn.with_shell("xset s off")
