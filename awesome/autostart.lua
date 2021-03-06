local awful = require("awful")

awful.spawn.with_shell("picom -f -b --experimental-backends")
awful.spawn.with_shell("nitrogen --restore")
awful.spawn.with_shell("xset s off")
awful.spawn.with_shell("xinput --set-prop 'Wings Tech Xtrfy M4' 'libinput Accel Speed' -0.75")
awful.spawn.with_shell("exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &")
awful.spawn.with_shell("eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh) export SSH_AUTH_SOCK")
