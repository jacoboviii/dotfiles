return {
	"otavioschwanck/arrow.nvim",
	opts = {
		mappings = {
			edit = "e",
			delete_mode = "x",
			clear_all_items = "C",
			toggle = "t", -- used as save if separate_save_and_remove is true
			open_vertical = "v",
			open_horizontal = "-",
			quit = "q",
			remove = "r", -- only used if separate_save_and_remove is true
			next_item = "]",
			prev_item = "[",
		},
		leader_key = "m",      -- Recommended to be a single key
		buffer_leader_key = "M", -- Per Buffer Mappings
		index_keys = "fjdkslFJDKSL",
	},
}
