-- [[ Basic Keymaps ]]

-- Easy escape from insert / visual mode
vim.keymap.set({ 'i' }, 'jk', '<Esc>')
vim.keymap.set({ 'i' }, 'kj', '<Esc>')
vim.keymap.set({ 't' }, 'jk', [[<C-\><C-n>]])

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
-- TODO: Diagnostic keymaps need to changed to map closer to trouble's keymaps (grouped under 'x')
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

-- Utility Keymaps
vim.keymap.set({ 'n' }, '<leader>Q', '<cmd>wa | qa<CR>', { desc = 'Save and Quit.' })

-- vim: ts=2 sts=2 sw=2 et
