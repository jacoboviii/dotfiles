return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        neotree = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        which_key = true,
      },
    }

    -- load the colorscheme here
    vim.cmd.colorscheme 'catppuccin'
  end,
}
