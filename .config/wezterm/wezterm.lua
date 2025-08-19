local wezterm = require 'wezterm'
local config = wezterm.config_builder()

local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
tabline.setup({
    theme = 'Ayu Mirage'
})
tabline.apply_to_config(config)

config.font = wezterm.font_with_fallback({
    'JetBrains Mono',
    'Noto Color Emoji',
})
config.initial_cols = 120
config.initial_rows = 40
config.font_size = 16
config.color_scheme = 'Ayu Mirage'
config.default_cursor_style = 'SteadyBar'
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.window_padding = {
  left = 20,
  right = 20,
  top = 10,
  bottom = 10,
}
config.window_close_confirmation = 'NeverPrompt'

return config
