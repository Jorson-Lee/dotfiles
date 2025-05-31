local wezterm = require 'wezterm'
local commands = require 'commands'
local config = wezterm.config_builder()
--Window size
config.initial_rows = 15
config.initial_cols = 80
--Font settings
config.font_size = 19
config.line_height = 1.2

config.font = wezterm.font 'JetBrains Mono'

--Colors
config.colors = {
  cursor_bg = 'white',
  cursor_border = 'white',
}

--Appearance
-- config.window_decorations = 'TITLE | RESIZE | INTEGRATED_BUTTONS '
config.window_background_opacity = 0.8
--config.macos_window_background_blur = 90

--Miscellaneous
config.max_fps = 120

--Custom commands
wezterm.on('augment-command-palette', function()
  return commands
end)
return config
