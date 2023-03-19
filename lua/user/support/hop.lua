require('hop').setup({})

require('which-key').register({
	['<Space>'] = { '<Cmd>HopWord<Cr>', 'Hop to a word' },
}, {
	prefix = '<Leader>',
})
