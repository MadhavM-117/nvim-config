-- Install the required plugins. Configuration for each plugin can happen in the plugins.config directory
require("lazy").setup({
	spec = {
		-- nvim color theme
		{
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1000,
			opts = {
				transparent = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
				},
			}
		},

		-- File explorer sidebar
		{
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v3.x",
			lazy = false,
		},


		{ "folke/lazydev.nvim" },

		-- Import configs for plugins
		{ import = "plugins.config" },
	},
})
