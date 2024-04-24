return {
	-- Set lualine as statusline
	"nvim-lualine/lualine.nvim",
	-- See `:help lualine.txt`
	opts = {
		options = {
			icons_enabled = true,
			theme = "catppuccin",
			disabled_filetypes = { "neo-tree" },
		},
		sections = {
			lualine_c = {
				{
					"filename",
					path = 1, -- 1: Relative path
				},
			},
		},
	},
}
