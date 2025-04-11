local opts = {
	preview = { auto_preview = false },
	func_map = {
		split = "s",
		vsplit = "v",
		sclear = "c",
		stoggleup = "M",
		stoggledown = "m",
		stogglevm = "m",
		filter = "f",
		filterr = "F",
		prevhist = "u",
		nexthist = "<C-r>",
		ptoggleauto = "a",
		ptoggleitem = "p",
		ptogglemode = "P",
	},
}

return {
	"kevinhwang91/nvim-bqf",
	ft = "qf",
	opts = opts,
}
