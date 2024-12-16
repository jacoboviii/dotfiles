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
					-- {
					-- 	require("noice").api.status.message.get_hl,
					-- 	cond = require("noice").api.status.message.has,
					-- },
					-- {
					-- 	require("noice").api.status.command.get,
					-- 	cond = require("noice").api.status.command.has,
					-- 	color = { fg = "#ff9e64" },
					-- },
					{
						require("noice").api.status.mode.get,
						cond = require("noice").api.status.mode.has,
						color = { fg = "#ff9e64" },
					},
					-- {
					-- 	require("noice").api.status.search.get,
					-- 	cond = require("noice").api.status.search.has,
					-- 	color = { fg = "#ff9e64" },
					-- },
					"fileformat",
					"filetype",
				},
			},
		})
	end,
}
