local awful = require("awful")

awful.spawn.with_shell("picom -f -b --experimental-backends")
awful.spawn.with_shell("nitrogen --restore")
awful.spawn.with_shell("xset s off")
