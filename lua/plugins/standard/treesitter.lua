return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'main',
	lazy = false,
	build = ":TSUpdate",
	config = function()
		vim.api.nvim_create_autocmd('FileType', {
			callback = function()
				pcall(vim.treesitter.start)
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})

		local ensureInstalled = {
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
		}
		local alreadyInstalled = require('nvim-treesitter.config').get_installed()
		local parsersToInstall = vim.iter(ensureInstalled)
			:filter(function(parser)
				return not vim.tbl_contains(alreadyInstalled, parser)
			end)
			:totable()
		if #parsersToInstall > 0 then
			require('nvim-treesitter').install(parsersToInstall)
		end
	end,
}
