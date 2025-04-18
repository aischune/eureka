local M = {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
}

M.config = function()
	local telescope = require("telescope")
	local actions = require("telescope.actions")

	telescope.setup({
		defaults = {
			prompt_prefix = "  ",
			selection_caret = "  ",
			multi_icon = " + ",
			entry_prefix = "  ",
			initial_mode = "insert",
			mappings = {
				i = {
					["<Esc>"] = actions.close,
					["<A-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
				},
			},
			sorting_strategy = "ascending",
			layout_strategy = "horizontal",
			layout_config = {
				horizontal = {
					prompt_position = "top",
					preview_width = 0.6,
					results_width = 0.4,
				},
				vertical = {
					mirror = false,
				},
				width = 0.85,
				height = 0.75,
				preview_cutoff = 120,
			},
		},
		pickers = {
			planets = { show_pluto = true, show_moon = true },
			colorscheme = { enable_preview = true },
		},
	})

	telescope.load_extension("fzf")

	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader><space>", builtin.find_files)
	vim.keymap.set("n", "<leader>ff", builtin.find_files)
	vim.keymap.set("n", "<leader>fw", builtin.live_grep)
	vim.keymap.set("n", "<leader>fb", builtin.buffers)
	vim.keymap.set("n", "<leader>fh", builtin.help_tags)
	vim.keymap.set("n", "<leader>fo", builtin.oldfiles)
	vim.keymap.set("n", "<leader>ft", builtin.builtin)
	vim.keymap.set("n", "<leader>fk", builtin.keymaps)
end

return M
