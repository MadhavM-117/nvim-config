local wk = require("which-key")

wk.add({
	{ "<leader>c",  group = "code" }, -- group
	{ "<leader>cr", vim.lsp.buf.rename, desc = "rename" },
	{
		"<leader>ca",
		function()
			vim.lsp.buf.code_action({
				context = {
					only = { "quickfix", "refactor", "source" },
					diagnostics = {}
				}
			})
		end,
		desc = "[C]ode [A]ction"
	},

	-- view docs. refer `:help K` to understand why
	{ 'K',     vim.lsp.buf.hover,          desc = 'Hover Documentation' },
	{ '<C-k>', vim.lsp.buf.signature_help, desc = 'Signature Documentation' }
})

-- TODO: enable LSP only if appropriate root marker is found
vim.lsp.config("denols", {
	root_markers = { "deno.json", "deno.jsonc" }

})

vim.lsp.config("ts_ls", {
	root_markers = { "tsconfig.sjon", "tsconfig.*.json", "package.json", ".git" }
})
