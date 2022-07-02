local beautiful = require("beautiful")
local awful = require("awful")

myawesomemenu = {
    { "restart", awesome.restart, beautiful.restart_icon },
    { "quit", function() awesome.quit() end, beautiful.quit_icon },
}
sysmenu = {
	{ "reboot", "reboot", beautiful.restart_icon },
	{ "shutdown", "shutdown now", beautiful.shutdown_icon }
}
 
mymainmenu = awful.menu({ items = {
									{ "terminal", "kitty", beautiful.term_icon },
									{ "firefox", "firefox", beautiful.firefox_icon },
									{ "discord", "discord", beautiful.discord_icon },
									{ "spotify", "spotify", beautiful.spotify_icon },
									{ "files", "pcmanfm", beautiful.files_icon },
									{ "awesome", myawesomemenu, beautiful.awm_icon },
									{ "system", sysmenu, beautiful.sys_icon },
                                   }
                         })

return mymainmenu
