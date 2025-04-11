local M = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	init = function(plugin)
		require("lazy.core.loader").add_to_rtp(plugin)
		require("nvim-treesitter.query_predicates")
	end,
}

---@diagnostic disable: missing-fields
M.config = function()
	require("nvim-treesitter.configs").setup({
		sync_install = true,
		auto_install = true, -- have 'tree-sitter-cli' installed
		ensure_installed = { "lua", "python", "rust", "go", "toml", "markdown", "javascript", "typescript" },

		indent = { enable = true },
		highlight = {
			enable = true,
			disable = { "tmux" },
		},
	})
end

return M
