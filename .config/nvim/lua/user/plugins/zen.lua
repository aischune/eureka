return {
	"folke/zen-mode.nvim",
	keys = { { "<leader>z", "<cmd>ZenMode<cr>" } },
	opts = {
		window = {
			backdrop = 1, -- look at rosepine hl group "ZenBg"
			width = 90,
			options = {
				number = false,
				relativenumber = false,
				laststatus = 3,
				signcolumn = "no",
			},
		},

		plugins = {
			tmux = { enabled = true },
			gitsigns = { enabled = true },
		},
	},
}
