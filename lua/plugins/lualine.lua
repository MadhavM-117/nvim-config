return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = function()
    return {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
        globalstatus = true,
        tabline = {
          lualine_a = {},
          lualine_b = { 'location' },
          lualine_c = { 'filename' },
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        }
      },
    }
  end,
}
