require('bufferline').setup({
	options = {
		show_buffer_close_icons = false,
		show_close_icon = false,
		diagnostics = 'nvim_lsp',
		diagnostics_update_in_insert = false,
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local _ = count
			local _ = level

			if context.buffer:current() then return '' end

			local res = ' '
			for type, number in pairs(diagnostics_dict) do
				local symbol = type == 'error' and ' ' or (type == 'warning' and ' ' or ' ')
				res = res .. number .. symbol
			end

			return res
		end,
		hover = {
			enabled = true,
			delay = 200,
			reveal = { 'close' },
		},
	},
})

vim.keymap.set('n', '<A-k>', '<Cmd>BufferLineCycleNext<Cr>')
vim.keymap.set('n', '<A-j>', '<Cmd>BufferLineCyclePrev<Cr>')
vim.keymap.set('n', '<A-K>', '<Cmd>BufferLineCycleNext<Cr>')
vim.keymap.set('n', '<A-J>', '<Cmd>BufferLineCyclePrev<Cr>')

require('which-key').register({
	b = { '<Cmd>BufferLinePick<Cr>', 'Pick a buffer' },
	B = {
		name = 'Buffer',
		c = { '<Cmd>bdelete!<Cr>', 'Close the current buffer' },
		C = { '<Cmd>BufferLinePickClose<Cr>', 'Close a picked buffer' },
		n = { '<Cmd>BufferLineCycleNext<Cr>', 'Go to the next buffer' },
		p = { '<Cmd>BufferLineCyclePrev<Cr>', 'Go to the previous buffer' },
		N = { '<Cmd>BufferLineMoveNext<Cr>', 'Move the current buffer forward' },
		P = { '<Cmd>BufferLineMovePrev<Cr>', 'Move the current buffer backward' },
	},
}, {
	prefix = '<Leader>',
})
