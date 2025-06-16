return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require('nvim-treesitter.configs').setup({
			ensure_installed = {
				'astro',
				'bash',
				'c',
				'cpp',
				'diff',
				'go',
				'html',
				'javascript',
				'jsdoc',
				'json',
				'jsonc',
				'lua',
				'luadoc',
				'luap',
				'markdown',
				'markdown_inline',
				'printf',
				'prisma',
				'python',
				'query',
				'regex',
				'rust',
				'toml',
				'tsx',
				'typescript',
				'vim',
				'vimdoc',
				'xml',
				'yaml',
			},


			-- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
			auto_install = false,
			-- Install languages synchronously (only applied to `ensure_installed`)
			sync_install = false,
			-- List of parsers to ignore installing
			ignore_install = {},
			-- You can specify additional Treesitter modules here: -- For example: -- playground = {--enable = true,-- },
			modules = {},
			highlight = { enable = true },
			indent = { enable = true },

		})
	end
}
