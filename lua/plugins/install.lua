-- Install the required plugins. Configuration for each plugin can happen in the plugins.config directory
require("lazy").setup({
	spec = {

		-- File explorer sidebar
		{
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v3.x",
			lazy = false,
		},

		-- Import configs for plugins
		{ import = "plugins.standard" },
		{ import = "plugins.lsp" },
		{ import = "plugins.autocomplete" },
	},
})
