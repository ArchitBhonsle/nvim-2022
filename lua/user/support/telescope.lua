require('telescope').setup({
	defaults = {
		layout_strategy = 'horizontal',
		layout_config = {
			height = 0.9,
			width = 0.9,
			preview_width = 0.5,
		},
	},
})

local builtin = require('telescope.builtin')

require('which-key').register({
	f = {
		function() builtin.find_files() end,
		'Find Files',
	},
	F = {
		name = 'Find',
		F = {
			function() builtin.live_grep() end,
			'Live Grep',
		},
		b = {
			function() builtin.buffers() end,
			'Buffers',
		},
		h = {
			function() builtin.help_tags() end,
			'Help Tags',
		},
		d = {
			function() builtin.diagnostics() end,
			'Diagnostics',
		},
		l = {
			name = 'LSP',
			r = {
				function() builtin.lsp_references() end,
				'References',
			},
			s = {
				function() builtin.lsp_document_symbols() end,
				'Document Symbols',
			},
			S = {
				function() builtin.lsp_workspace_symbols() end,
				'Workspace Symbols',
			},
			d = {
				function() builtin.lsp_definitions() end,
				'Definitions',
			},
			D = {
				function() builtin.lsp_type_definitions() end,
				'Type Definitions',
			},
			i = {
				function() builtin.lsp_implementations() end,
				'Implementations',
			},
			c = {
				function() builtin.lsp_incoming_calls() end,
				'Ingoing Calls',
			},
			C = {
				function() builtin.lsp_outgoing_calls() end,
				'Outgoing Calls',
			},
		},
	},
}, {
	prefix = '<Leader>',
})
