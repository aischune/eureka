-- windows terminal has a cursor issue, and oil.nvim uses a hide_cursor thing
-- to prevent the cursor issue, delete the uses of hide_cursor from the plugin
-- this is a temp fix until windows terminal fixes it, or i end up switching

return {
	"stevearc/oil.nvim",
	-- oil cant hijack netrw if it aint loaded
	lazy = false,

	keys = { { "<leader>e", "<cmd>Oil --float<cr>" } },
	opts = {
		float = {
			border = "single",
			max_height = 25,
			max_width = 65,
		},

		keymaps_help = {
			border = "single",
		},
	},
}
