local M = {}

M.apply_to_config = function(config)
	config.adjust_window_size_when_changing_font_size = false
	config.debug_key_events = false
	config.enable_tab_bar = false
	config.native_macos_fullscreen_mode = false
	config.window_close_confirmation = "NeverPrompt"
	config.window_decorations = "RESIZE"
	config.window_padding = {
		left = 5,
		right = 5,
		top = 20,
		bottom = 10,
	}
end

return M
