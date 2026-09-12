---@diagnostic disable: undefined-global

local confVars = require("hyprland/variables")

-- Common
hl.bind(confVars.mainMod .. " + RETURN", hl.dsp.exec_cmd(confVars.terminal))
hl.bind(confVars.mainMod .. " + SHIFT + Q", hl.dsp.window.close())
hl.bind(confVars.mainMod .. " + T", hl.dsp.exec_cmd(confVars.terminal .. " -e " .. confVars.fileManager))
hl.bind(confVars.mainMod .. " + Q", hl.dsp.exec_cmd(confVars.browser))
hl.bind(confVars.mainMod .. " + D", hl.dsp.exec_cmd(confVars.menu))
hl.bind(confVars.mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(confVars.mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(confVars.mainMod .. " + ESCAPE", hl.dsp.exec_cmd("hyprlock --no-fade-in --grace 0"))
-- Screenshot area selection to clipboard
hl.bind(confVars.mainMod .. " + SHIFT + P", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))
-- Move focus hjkl
hl.bind(confVars.mainMod .. " + " .. confVars.left, hl.dsp.focus({ direction = "left" }))
hl.bind(confVars.mainMod .. " + " .. confVars.right, hl.dsp.focus({ direction = "right" }))
hl.bind(confVars.mainMod .. " + " .. confVars.up, hl.dsp.focus({ direction = "up" }))
hl.bind(confVars.mainMod .. " + " .. confVars.down, hl.dsp.focus({ direction = "down" }))
-- Move window hjkl
hl.bind(confVars.mainMod .. " + SHIFT + " .. confVars.left, hl.dsp.window.move({ direction = "left" }))
hl.bind(confVars.mainMod .. " + SHIFT + " .. confVars.right, hl.dsp.window.move({ direction = "right" }))
hl.bind(confVars.mainMod .. " + SHIFT + " .. confVars.up, hl.dsp.window.move({ direction = "up" }))
hl.bind(confVars.mainMod .. " + SHIFT + " .. confVars.down, hl.dsp.window.move({ direction = "down" }))
-- Switch workspace / move active window to workspace
for i = 1, 10 do
	local key = i % 10
	hl.bind(confVars.mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(confVars.mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
-- Scratchpad
hl.bind(confVars.mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(confVars.mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
-- Multimedia keys for volume, playback control and brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
-- Enable movind windows with the mouse
hl.bind("ALT + mouse:272", hl.dsp.window.drag(), { mouse = true })
-- Zoom
hl.bind(confVars.mainMod .. " + SHIFT + equal", function()
	local targetMonitor = "eDP-1"
	local normalScale = 1.0
	local zoomedScale = 1.5666666667
	local currentScale = hl.get_monitor(targetMonitor).scale

	if currentScale > normalScale then
		hl.monitor({
			output = targetMonitor,
			mode = "preferred",
			position = "auto",
			scale = normalScale,
		})
	else
		hl.monitor({
			output = targetMonitor,
			mode = "preferred",
			position = "auto",
			scale = zoomedScale,
		})
	end
end)
