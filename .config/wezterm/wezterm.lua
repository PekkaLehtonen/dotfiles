local wezterm = require("wezterm")
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = "tokyonight-storm"
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8

config.macos_window_background_blur = 15

-- Keybindings
config.keys = {}
-- Pane management
for _, v in ipairs({
    { "Enter", act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { "w",     act.CloseCurrentPane { confirm = true } },
    { "j",     act.ActivatePaneDirection 'Down' },
    { "k",     act.ActivatePaneDirection 'Up' },
    { "h",     act.ActivatePaneDirection 'Left' },
    { "l",     act.ActivatePaneDirection 'Right' },
}) do table.insert(config.keys, { mods = "ALT", key = v[1], action = v[2] }) end

table.insert(config.keys, { mods = "ALT|SHIFT", key = "Enter", action = act.SplitVertical { domain = "CurrentPaneDomain" } })

return config
