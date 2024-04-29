return {
	-- Set lualine as statusline
	"nvim-lualine/lualine.nvim",
	-- See `:help lualine.txt`
	config = function()
		require("lualine").setup({
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
				lualine_x = {
					{
						require("noice").api.statusline.mode.get,
						cond = require("noice").api.statusline.mode.has,
					},
					"fileformat",
					"filetype",
				},
			},
		})
	end,
}
