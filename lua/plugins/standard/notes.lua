return {
	"madhavm-117/notes.nvim",
	---@module 'notes'
	---@type LazySpec
	cmd = { "Note", "NoteFromTemplate", "DailyNote", "NoteCheckLinks", "NoteFixLink", "NoteTodos" },
	ft = "markdown",
	opts = {
		-- default vault: $XDG_DOCUMENTS_DIR/notes (or ~/Documents/notes)
		-- vaults = { research = "~/research/notes" },
		-- templates = { dir = "~/notes/templates", default = "note.md" },
		-- daily = { dir = "daily", filename = "{{date:YYYY-MM-DD}}.md" },
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
