-- Useful plugin to show you pending keybinds.
return {
	"folke/which-key.nvim",
	config = function()
		local wk = require("which-key")
		wk.setup({
			preset = "modern",
		})

		wk.add({
			{ "<leader>b", desc = "[B]uffers" },
			{ "<leader>d", desc = "[D]ocument" },
			{ "<leader>g", desc = "[G]it" },
			{ "<leader>l", desc = "[L]SP" },
			{ "<leader>s", desc = "[S]earch" },
			{ "<leader>t", desc = "[T]oggle" },
			{ "<leader>u", desc = "[U]ser" },
		})
		-- register which-key VISUAL mode
		-- required for visual <leader>gs (hunk stage) to work
		wk.add({
			{ "<leader>",  desc = "VISUAL <leader>" },
			{ "<leader>g", desc = "[G]it" },
			{ mode = "v" },
		})
	end,
}
