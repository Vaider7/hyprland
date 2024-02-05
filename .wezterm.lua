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
config.color_scheme = 'Tokyo Night'
config.font_size = 13.0
config.window_background_opacity = 0.9
config.use_fancy_tab_bar = false
config.window_padding = {
  bottom = '0',
  left = '0.5cell',
  right = '0.5cell',
}
config.hide_tab_bar_if_only_one_tab = true

config.quick_select_patterns = {
  "❯ (.*)"
}
config.enable_kitty_keyboard = true
config.window_close_confirmation = 'NeverPrompt'
config.check_for_updates = false

-- and finally, return the configuration to wezterm
return config
