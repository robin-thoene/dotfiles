---@diagnostic disable: undefined-global

-- Cursor
hl.env("XCURSOR_SIZE", "22")
hl.env("HYPRCURSOR_SIZE", "22")
hl.env("XCURSOR_THEME", "capitaine-cursors")
-- QT
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
-- XDG
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
-- Electron
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
