require('nvim-tree').setup({
	open_on_setup = true,
	reload_on_bufenter = true,
})

require('which-key').register({
	e = { '<cmd>NvimTreeToggle<CR>', 'Toggle File Explorer' },
}, { prefix = '<Leader>' })
