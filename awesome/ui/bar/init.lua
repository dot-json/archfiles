local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local colors = require("config.colors")

local arch_logo = require("ui.bar.components.arch_logo")
local separator = require("ui.bar.components.separator")
local create_taglist = require("ui.bar.components.taglist")
--local date = wibox.widget.textclock(" %b %d, %Y")
--local clock = wibox.widget.textclock(" %I:%M %p")
local date = wibox.widget.textclock("/ %b %d, %Y")
local clock = wibox.widget.textclock("/ %I:%M %p /")

awful.screen.connect_for_each_screen(function(s)

    create_taglist(s)

    -- Add padding equal to bar top padding
    s.padding = {
      top = beautiful.useless_gap - 4,
    } 

    -- Create the wibox
    s.mywibox = awful.wibox({ 
      screen = s, 
      --width = s.geometry.width - beautiful.useless_gap * 4,
      width = s.geometry.width,
      height = beautiful.wibar_height,
      border_width = 0,
      border_color = "#828282",
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
                  right = beautiful.taglist_spacing,
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
                    right = beautiful.taglist_spacing-10,
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
                    right = beautiful.taglist_spacing+5,
                    clock
                  },
                }
	      }	
          },
        }
    }

    --s.mywibox.x = s.geometry.x + beautiful.useless_gap * 2
    s.mywibox.x = s.geometry.x
    --s.mywibox.y = s.geometry.y + beautiful.useless_gap * 2
    s.mywibox.y = s.geometry.y
end)
