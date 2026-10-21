-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Example: output can be found with hyprctl monitors. Edit variables.lua for the monitor outputs instead of here directly
-- hl.monitor({
--     output    = "MONITOR1",
--     mode      = "1920x1080@60",
--     position  = "0x0",
--     scale     = "1",
-- })

-- External monitor (AOC U34E2M) on top, at x=0,y=0
hl.monitor({
	output = MONITOR2,
	mode = "3440x1440@59.97",
	position = "0x0",
	scale = "1",
})

-- Laptop panel below, horizontally centered under the external monitor
-- (3440 - 1920) / 2 = 760
hl.monitor({
	output = MONITOR1,
	mode = "1920x1200@60.00",
	position = "760x1440",
	scale = "1",
})
