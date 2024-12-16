return {
	-- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	config = function()
		-- [[ Configure Treesitter ]]
		-- See `:help nvim-treesitter`
		-- Defer Treesitter setup after first render to improve startup time of 'nvim {filename}'
		vim.defer_fn(function()
			require("nvim-treesitter.configs").setup({
				-- Add languages to be installed here that you want installed for treesitter
				ensure_installed = {
					"c",
					"cpp",
					"go",
					"lua",
					"python",
					"rust",
					"tsx",
					"javascript",
					"typescript",
					"vimdoc",
					"vim",
					"bash",
					"templ",
				},

				sync_install = false,
				-- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
				auto_install = true,
				ignore_install = {},

				highlight = { enable = true },
				indent = { enable = true },
			})
		end, 0)
	end,
}
