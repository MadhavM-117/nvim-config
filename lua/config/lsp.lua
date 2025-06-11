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
	}
})
