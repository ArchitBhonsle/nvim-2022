require('nvim-treesitter.configs').setup({
	ensure_installed = 'all',
	highlight = { enable = true },
	context_commentstring = { enable = true },
	rainbow = {
		enable = true,
		extended_mode = true,
	},
	textobjects = {
		enable = true,
		lookahead = true,
		keymaps = {
			['if'] = { query = '@function.inner', desc = 'Select inner part of a function' },
			['af'] = { query = '@function.outer', desc = 'Select outer part of a function' },
			['ic'] = { query = '@class.inner', desc = 'Select inner part of a class' },
			['ac'] = { query = '@class.outer', desc = 'Select outer part of a class' },
		},
		swap = {
			enable = true,
			swap_next = {
				['<C-s>'] = '@parameter.inner',
			},
			swap_previous = {
				['<Ctrl-S>'] = '@parameter.inner',
			},
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				[']m'] = '@function.outer',
				[']]'] = { query = '@class.outer', desc = 'Next class start' },
			},
			goto_next_end = {
				[']M'] = '@function.outer',
				[']['] = '@class.outer',
			},
			goto_previous_start = {
				['[m'] = '@function.outer',
				['[['] = '@class.outer',
			},
			goto_previous_end = {
				['[M'] = '@function.outer',
				['[]'] = '@class.outer',
			},
		},
	},
})
