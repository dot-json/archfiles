local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local colors = require("config.colors")

local arch_logo = require("ui.bar.components.arch_logo")
local separator = require("ui.bar.components.separator")
local create_taglist = require("ui.bar.components.taglist")
local date = wibox.widget.textclock(" %b %d, %Y")
local clock = wibox.widget.textclock(" %l:%M %p")

awful.screen.connect_for_each_screen(function(s)

    create_taglist(s)

    -- Add padding equal to bar top padding
    s.padding = {
      top = beautiful.useless_gap * 2
    } 

    -- Create the wibox
    s.mywibox = awful.wibox({ 
      screen = s, 
      width = s.geometry.width - beautiful.useless_gap * 4,
      height = beautiful.wibar_height
    })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.container.background,
        bg = colors.primary,
        {
          layout = wibox.layout.align.horizontal,
          -- Left widgets
          { 
              layout = wibox.layout.fixed.horizontal,
              {
                layout = wibox.container.background,
                bg = colors.primary,
                {
                  layout = wibox.container.margin,
                  left = beautiful.taglist_spacing,
                  right = beautiful.taglist_spacing-10,
                  s.mytaglist
                }
              },
          },
          nil,
          -- Right widgets
          { 
              layout = wibox.layout.fixed.horizontal,
              {
                layout = wibox.container.background, 
                bg = colors.primary,
                fg = colors.text_2,
                {
                  layout = wibox.layout.fixed.horizontal,
                  {
                    layout = wibox.container.margin,
                    left = beautiful.taglist_spacing,
                    right = beautiful.taglist_spacing,
                    date 
                  },
                }
              },
              {
                layout = wibox.container.background,
                bg = colors.primary,
                fg = colors.text_2,
                {
                  layout = wibox.layout.fixed.horizontal,
                  {
                    layout = wibox.container.margin,
                    left = beautiful.taglist_spacing,
                    right = beautiful.taglist_spacing,
                    clock
                  },
                }
	      }	
          },
        }
    }

    s.mywibox.x = s.geometry.x + beautiful.useless_gap * 2
    s.mywibox.y = s.geometry.y + beautiful.useless_gap * 2
end)
