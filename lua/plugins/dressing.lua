return {
  'stevearc/dressing.nvim',
  config = function()
    require('dressing').setup({
      input = {
        title_pos = 'center',
        start_in_insert = false,
        win_options = {
          wrap = false,
        }
      }
    })
  end
}
