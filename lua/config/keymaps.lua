-- [[ Basic Keymaps ]]

-- Easy escape from insert / visual mode
vim.keymap.set({ 'i' }, 'jk', '<Esc>')
vim.keymap.set({ 'i' }, 'kj', '<Esc>')

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Neorg keymaps

vim.keymap.set('n', '<leader>nr', '<cmd>Neorg return<CR>', { desc = '[N]eorg [Return]' })
vim.keymap.set('n', '<leader>nj', function()
  if vim.bo.buftype ~= '' then
    -- work around for the weirdness when you try to enter journal while on a neotree buffer
    vim.api.nvim_command ':Neorg index'
    vim.defer_fn(function()
      vim.api.nvim_command ':Neorg journal today'
    end, 100)
  else
    vim.api.nvim_command ':Neorg journal today'
  end
end, { desc = '[N]eorg - [J]ournal Today' })
vim.keymap.set('n', '<leader>nm', '<cmd>Neorg inject-metadata<CR>', { desc = '[N]eorg - Inject [M]etadata' })
vim.keymap.set('n', '<leader>nl', '<cmd>Neorg keybind all core.looking-glass.magnify-code-block<CR>', { desc = '[N]eorg - [L]ooking Glass' })

-- vim: ts=2 sts=2 sw=2 et
