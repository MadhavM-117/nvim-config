return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    "BufReadPre " .. vim.fn.expand "~" .. "/personal/obsidian/raaz/**.md",
    "BufNewFile " .. vim.fn.expand "~" .. "/personal/obsidian/raaz/**.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter"
  },
  opts = {
    workspaces = {
      {
        name = "raaz",
        path = "~/personal/obsidian/raaz/",
      },
    },
  },
}
