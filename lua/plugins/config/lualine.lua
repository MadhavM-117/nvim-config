return {
	-- Set lualine as statusline
	'nvim-lualine/lualine.nvim',
	-- See `:help lualine.txt`
	opts = function()
		return {
			options = {
				icons_enabled = true,
				theme = 'auto',
				component_separators = '|',
				section_separators = '',
				globalstatus = true,
			},
			sections = {
				lualine_c = {
					{
						'filename',
						file_status = true,
						path = 1 -- path, relative to root. Refer :help lualine
					}
				}
			},
		}
	end,
}
