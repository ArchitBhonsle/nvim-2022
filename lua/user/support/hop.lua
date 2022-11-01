require('hop').setup({})

require('which-key').register({
	h = { '<Cmd>HopWord<Cr>', 'Hop to a word' },
}, {
	prefix = '<Leader>',
})
