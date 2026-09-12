---@diagnostic disable: undefined-global

hl.config({
	input = {
		kb_layout = "us,us",
		kb_variant = ",intl",
		follow_mouse = 1,
		repeat_rate = 100,
		repeat_delay = 250,
		sensitivity = 0,
		natural_scroll = true,
		accel_profile = "flat",
		touchpad = {
			natural_scroll = true,
		},
	},
})

hl.device({
	name = "pixa3854:00-093a:0274-touchpad",
	accel_profile = "adaptive",
})
