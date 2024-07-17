-- Neorg keybinds
-- Keybinding that are active only in *.norg files

vim.keymap.set('n', '<leader>nl', "<Plug>(neorg.looking-glass.magnify-code-block)",
  { desc = '[N]eorg - [L]ooking Glass', buffer = true })
