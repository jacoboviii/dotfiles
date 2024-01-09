-- Useful plugin to show you pending keybinds.
return {
  'folke/which-key.nvim',
  config = function()
    -- document existing key chains
    local which_key = require 'which-key'

    which_key.register {
      ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
      ['<leader>l'] = { name = '[L]SP', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
      ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
    }
    -- register which-key VISUAL mode
    -- required for visual <leader>gs (hunk stage) to work
    which_key.register({
      ['<leader>'] = { name = 'VISUAL <leader>' },
      ['<leader>g'] = { '[G]it' },
    }, { mode = 'v' })
  end,
}
