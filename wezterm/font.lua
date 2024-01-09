local wezterm = require("wezterm")
local M = {}

M.apply_to_config = function(config)
	config.font = wezterm.font("JetBrains Mono")
	config.font_size = 16.0
end

return M
