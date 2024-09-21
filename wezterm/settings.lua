local M = {}

M.apply_to_config = function(config, act)
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
	config.keys = {
		-- Clears only the scrollback and leaves the viewport intact.
		-- You won't see a difference in what is on screen, you just won't
		-- be able to scroll back until you've output more stuff on screen.
		-- This is the default behavior.
		-- {
		-- 	key = "K",
		-- 	mods = "CTRL|SHIFT",
		-- 	action = act.ClearScrollback("ScrollbackOnly"),
		-- },
		-- Clears the scrollback and viewport leaving the prompt line the new first line.
		-- {
		-- 	key = "K",
		-- 	mods = "CTRL|SHIFT",
		-- 	action = act.ClearScrollback("ScrollbackAndViewport"),
		-- },
		-- Clears the scrollback and viewport, and then sends CTRL-L to ask the
		-- shell to redraw its prompt
		{
			key = "K",
			mods = "CTRL|SHIFT",
			action = act.Multiple({
				act.ClearScrollback("ScrollbackAndViewport"),
				act.SendKey({ key = "L", mods = "CTRL" }),
			}),
		},
	}
end

return M
