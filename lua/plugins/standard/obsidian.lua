return {
	"obsidian-nvim/obsidian.nvim",
	ft = "markdown",
	---@module 'obsidian'
	---@type obsidian.config
	opts = {
		legacy_commands = false, -- this will be removed in the next major release
		workspaces = {
			{
				name = "personal",
				path = "~/personal/obsidian/raaz/",
			},
		},

		daily_notes = {
			folder = "9-journal"
		},
	},
}
