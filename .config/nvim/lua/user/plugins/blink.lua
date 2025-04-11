local function select(dir)
	return function(cmp)
		cmp["select_" .. dir]({ auto_insert = false })
	end
end

---@module 'blink.cmp'
---@type blink.cmp.Config
local opts = {
	keymap = {
		preset = "none",
		["<C-space>"] = { "accept" },

		["<C-n>"] = { select("next") },
		["<C-p>"] = { select("prev") },

		["<Tab>"] = { "snippet_forward", "fallback" },
		["<S-Tab>"] = { "snippet_backward", "fallback" },

		["<C-e>"] = { "hide" },

		["<C-b>"] = {
			function(cmp)
				cmp.show({ providers = { "snippets" } })
			end,
		},
	},
}

return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets", -- optional: provides snippets for the snippet source
	version = "1.*", -- use a release tag to download pre-built binaries

	opts = opts,
	opts_extend = { "sources.default" },
}
