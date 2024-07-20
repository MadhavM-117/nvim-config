return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    local wk = require 'which-key'

    require('toggleterm').setup {}

    wk.add { '<leader>ut', '<cmd>ToggleTerm<CR>', desc = '[U]I - [T]erminal' }
  end,
}
