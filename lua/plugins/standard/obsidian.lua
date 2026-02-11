return {
	"obsidian-nvim/obsidian.nvim",
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
			folder = "9-journal",
			default_tags = nil,
			workdays_only = false,
		},
	},
	keys = {
		{ "<leader>o",  nil,                              desc = "Obsidian",                    group = "Obsidian" },
		-- todo: use a better ui to handle text input for note name.
		{ "<leader>on", "<cmd>Obsidian new<cr>",          desc = "Obsidian: New Note" },
		{ "<leader>oo", "<cmd>Obsidian open<cr>",         desc = "Obsidian: Open in Obsidian" },
		{ "<leader>os", "<cmd>Obsidian quick_switch<cr>", desc = "Obsidian: search by filename" },
		{ "<leader>oS", "<cmd>Obsidian search<cr>",       desc = "Obsidian: search notes" },
		{ "<leader>ot", "<cmd>Obsidian today<cr>",        desc = "Obsidian: today" }
	},
}
