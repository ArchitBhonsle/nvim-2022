require('nvim-tree').setup({
	reload_on_bufenter = true,
})

require('which-key').register({
	e = { '<cmd>NvimTreeToggle<CR>', 'Toggle File Explorer' },
}, { prefix = '<Leader>' })
