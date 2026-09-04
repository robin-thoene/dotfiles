---@diagnostic disable: undefined-global

local colors = require("themes/colors")

hl.config({
	general = {
		gaps_in = 2.5,
		gaps_out = 5,
		border_size = 3,
		col = {
			active_border = colors.lavender,
			inactive_border = colors.overlay0,
		},
		resize_on_border = true,
		extend_border_grab_area = 20,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 7,
		shadow = {
			enabled = false,
		},
		blur = {
			enabled = false,
		},
	},

	animations = {
		enabled = false,
	},

	dwindle = {
		force_split = 2,
		smart_resizing = false,
	},

	misc = {
		disable_hyprland_logo = true,
	},
})
