local M = {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = "nvim-lua/plenary.nvim",
}

M.config = function()
	local harpoon = require("harpoon")

	harpoon:setup({})

	vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
	vim.keymap.set("n", "<leader>he", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

	-- quick swap
	vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
	vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
	vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
	vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)

	vim.keymap.set("n", "<leader>7", function() harpoon:list():select(5) end)
	vim.keymap.set("n", "<leader>8", function() harpoon:list():select(6) end)
	vim.keymap.set("n", "<leader>9", function() harpoon:list():select(7) end)
	vim.keymap.set("n", "<leader>0", function() harpoon:list():select(8) end)

	-- toggle previous & next buffers stored within Harpoon list
	-- vim.keymap.set("n", "<c-p>", function() harpoon:list():prev() end)
	-- vim.keymap.set("n", "<c-n>", function() harpoon:list():next() end)
end

return M
