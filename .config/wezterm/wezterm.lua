-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
--config.color_scheme = 'AdventureTime'
config.adjust_window_size_when_changing_font_size = false
-- color_scheme = 'Afterglow (Gogh)'
-- color_scheme = 'Wez'
config.color_scheme = 'tokyonight'
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 16.0
config.hide_tab_bar_if_only_one_tab = true
config.line_height = 1.0
config.window_background_opacity = 1.0
config.window_decorations = "RESIZE"
config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.8,
}
config.window_padding = {
        left = '1cell',
        right = '1cell',
        top = '0.5cell',
        bottom = '0.5cell',
}


-- and finally, return the configuration to wezterm
return config
