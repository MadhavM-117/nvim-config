-- Install the required plugins. Configuration for each plugin can happen in the plugins.config directory
require("lazy").setup({
	spec = {
		-- nvim color theme
		{ "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
	},
})
