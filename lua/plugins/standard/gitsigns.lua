return {
	-- Adds git related signs to the gutter, as well as utilities for managing changes
	"lewis6991/gitsigns.nvim",
	opts = {
		-- See `:help gitsigns.txt`
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
		on_attach = function(bufnr)
			local gs = package.loaded.gitsigns

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Navigation
			map({ "n", "v" }, "]c", function()
				if vim.wo.diff then return "]c" end
				vim.schedule(function()
					gs.next_hunk()
				end)
				return "<Ignore>"
			end, { expr = true, desc = "Jump to next hunk" })

			map({ "n", "v" }, "[c", function()
				if vim.wo.diff then return "[c" end
				vim.schedule(function()
					gs.prev_hunk()
				end)
				return "<Ignore>"
			end, { expr = true, desc = "Jump to previous hunk" })

			-- Normal
			map('n', '<leader>ghs', gs.stage_hunk, { desc = 'git stage hunk' })
			map('n', '<leader>ghr', gs.reset_hunk, { desc = 'git reset hunk' })
			map('n', '<leader>ghS', gs.stage_buffer, { desc = 'git Stage buffer' })
			map('n', '<leader>ghu', gs.undo_stage_hunk, { desc = 'undo stage hunk' })
			map('n', '<leader>ghR', gs.reset_buffer, { desc = 'git Reset buffer' })
			map('n', '<leader>ghp', gs.preview_hunk, { desc = 'preview git hunk' })
			map('n', '<leader>ghb', function()
				gs.blame_line { full = false }
			end, { desc = 'git blame line' })
			map('n', '<leader>ghd', gs.diffthis, { desc = 'git diff against index' })
			map('n', '<leader>ghD', function()
				gs.diffthis '~'
			end, { desc = 'git diff against last commit' })
		end,
	},
}
