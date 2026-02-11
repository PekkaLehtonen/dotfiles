local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16

config.enable_tab_bar = false
config.window_background_opacity = 0.8

config.color_scheme = "tokyonight-storm"
config.macos_window_background_blur = 15

-- Keybindings
config.keys = {}
-- Pane management
for _, v in ipairs({
	{"Enter", act.SplitHorizontal{domain='CurrentPaneDomain'}},
	{"w", act.CloseCurrentPane{confirm=true}},
	{"j", act.ActivatePaneDirection'Left'},
	{"k", act.ActivatePaneDirection'Right'},
}) do table.insert(config.keys, {mods="ALT", key=v[1], action=v[2]}) end

return config
