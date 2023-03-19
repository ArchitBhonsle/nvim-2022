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
		},
		move = {
			enable = true,
			set_jumps = true,
			goto_next_start = {
				[']c'] = { query = '@class.outer', desc = 'Next class start' },
				[']f'] = { query = '@function.outer', desc = 'Next function start' },
			},
			goto_next_end = {
				[']C'] = { query = '@class.outer', desc = 'Next class end' },
				[']F'] = { query = '@function.outer', desc = 'Next function end' },
			},
			goto_previous_start = {
				['[c'] = { query = '@class.outer', desc = 'Previous class start' },
				['[f'] = { query = '@function.outer', desc = 'Previous function start' },
			},
			goto_previous_end = {
				['[C'] = { query = '@class.outer', desc = 'Previous class start' },
				['[F'] = { query = '@function.outer', desc = 'Previous function start' },
			},
		},
	},
})
