return {
	'nvim-neorg/neorg',
	version = '*',
	dependencies = { { 'nvim-neorg/neorg-telescope' }, 'benlubas/neorg-interim-ls' },
	config = function()
		require('neorg').setup {
			load = {
				['core.clipboard.code-blocks'] = {},
				['core.completion'] = { config = { engine = { module_name = "external.lsp-completion" } } },
				['core.concealer'] = {
					config = {
						icon_preset = 'diamond',
					},
				},
				['core.defaults'] = {},
				['core.dirman'] = {
					config = {
						workspaces = {
							notes = '~/personal/notes',
						},
						default_workspace = 'notes',
						use_popup = false,
					},
				},
				['core.esupports.metagen'] = {
					config = {
						type = 'auto',
					},
				},
				['core.integrations.telescope'] = {},
				['core.integrations.treesitter'] = {},
				['core.journal'] = {
					config = {
						journal_folder = '0_journal'
					}
				},
				['core.keybinds'] = {},
				['core.looking-glass'] = {},
				['core.text-objects'] = {},
				['core.ui'] = {},
				['core.ui.calendar'] = {},
			},
			["external.interim-ls"] = {
				config = {
					-- default config shown
					completion_provider = {
						-- Enable or disable the completion provider
						enable = true,

						-- Show file contents as documentation when you complete a file name
						documentation = true,

						-- Try to complete categories provided by Neorg Query. Requires `benlubas/neorg-query`
						categories = false,

						-- suggest heading completions from the given file for `{@x|}` where `|` is your cursor
						-- and `x` is an alphanumeric character. `{@name}` expands to `[name]{:$/people:# name}`
						people = {
							enable = false,

							-- path to the file you're like to use with the `{@x` syntax, relative to the
							-- workspace root, without the `.norg` at the end.
							-- ie. `folder/people` results in searching `$/folder/people.norg` for headings.
							-- Note that this will change with your workspace, so it fails silently if the file
							-- doesn't exist
							path = "people",
						}
					}
				}
			},
		}

		vim.keymap.set('n', '<leader>nr', '<cmd>Neorg return<CR>', { desc = '[N]eorg [Return]' })

		vim.keymap.set('n', '<leader>njt', function()
			if vim.bo.buftype ~= '' then
				-- work around for the weirdness when you try to enter journal while on a neotree buffer
				vim.api.nvim_command ':Neorg index'
				vim.defer_fn(function()
					vim.api.nvim_command ':Neorg journal today'
				end, 100)
			else
				vim.api.nvim_command ':Neorg journal today'
			end
		end, { desc = '[N]eorg - [J]ournal [T]oday' })

		vim.keymap.set('n', '<leader>njc', function()
			if vim.bo.buftype ~= '' then
				-- work around for the weirdness when you try to enter journal while on a neotree buffer
				vim.api.nvim_command ':Neorg index'
				vim.defer_fn(function()
					vim.api.nvim_command ':Neorg journal custom'
				end, 100)
			else
				vim.api.nvim_command ':Neorg journal custom'
			end
		end, { desc = '[N]eorg - [J]ournal @ [C]ustom Date' })
	end,
}
