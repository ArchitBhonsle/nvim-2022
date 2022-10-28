require("which-key").register({
	f = {
		function()
			require("telescope.builtin").find_files()
		end,
		"Find Files",
	},
	F = {
		name = "Find",
		g = {
			function()
				require("telescope.builtin").live_grep()
			end,
			"Live Grep",
		},
		b = {
			function()
				require("telescope.builtin").buffers()
			end,
			"Buffers",
		},
		h = {
			function()
				require("telescope.builtin").help_tags()
			end,
			"Help Tags",
		},
	},
}, {
	prefix = "<Leader>",
})
