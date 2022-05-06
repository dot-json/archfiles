local awful = require("awful")

awful.spawn.with_shell("picom -f -b --experimental-backends")
awful.spawn.with_shell("nitrogen --restore")
awful.spawn.with_shell("xset s off")
awful.spawn.with_shell("xinput --set-prop 8 'libinput Accel Speed' -0.75")
