return {
  "folke/which-key.nvim",
  config = function()
    -- document existing key chains
    require('which-key').add({
      { '<leader>c', group = '[C]ode', icon = '' },
      { '<leader>d', group = '[D]ocument', icon = '' },
      { '<leader>f', group = '[F]ile', icon = '' },
      { '<leader>g', group = '[G]it', icon = '' },
      { '<leader>s', group = '[S]earch', icon = '' },
      { '<leader>n', group = '[N]otes', icon = '' },
      { '<leader>t', group = '[T]oggle', icon = '' },
      { '<leader>u', group = '[U]ndo', icon = '' },
      { '<leader>v', group = '[V]irtual Environment', icon = '󰍛' },
      { '<leader>w', group = '[W]orkspace', icon = '' },
    })
    -- register which-key VISUAL mode
    -- required for visual <leader>hs (hunk stage) to work
    --
    require('which-key').add({
      { "<leader>", group = "VISUAL <leader>", mode = "v" },
      { "<leader>h", desc = "Git [H]unk", icon = '', mode = "v" },
    })
  end
}
