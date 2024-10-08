return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		require("neo-tree").setup()
		vim.keymap.set("n", "<leader>e", "<Cmd>Neotree reveal toggle<CR>", { desc = "[E]xplorer" })
	end,
}
