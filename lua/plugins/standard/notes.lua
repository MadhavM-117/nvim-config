return {
	"madhavm-117/notes.nvim",
	---@module 'notes'
	---@type LazySpec
	cmd = { "Note", "NoteFromTemplate", "DailyNote", "NoteCheckLinks", "NoteFixLink", "NoteTodos" },
	ft = "markdown",
	opts = {
		default_vault = "/home/y13/obsidian/personal",
		daily = { dir = "9-journal" }
	},
	keys = {
		{ "<leader>t",  nil,                         desc = "Notes",                group = "Notes" },
		{ "<leader>tn", "<cmd>Note<cr>",             desc = "New Note" },
		{ "<leader>tt", "<cmd>NoteFromTemplate<cr>", desc = "Note from Template" },
		{ "<leader>td", "<cmd>DailyNote<cr>",        desc = "Daily Note" },
		{ "<leader>tT", "<cmd>NoteTodos<cr>",        desc = "To-dos" },
		{ "<leader>tl", "<cmd>NoteFixLink<cr>",      desc = "Fix Link under cursor" },
	},
}
