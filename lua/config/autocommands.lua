-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

-- Disable diff mode when quitting a window
vim.api.nvim_create_autocmd("QuitPre", {
	callback = function()
		if vim.wo.diff then
			vim.cmd("diffoff!")
		end
	end,
})
