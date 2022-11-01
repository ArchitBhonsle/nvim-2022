vim.api.nvim_create_augroup('user', { clear = true })

vim.api.nvim_create_autocmd('BufWritePre', {
	group = 'user',
	desc = 'Format the file on save',
	callback = function() vim.lsp.buf.format() end,
})

vim.api.nvim_create_autocmd('TextYankPost', {
	group = 'user',
	desc = 'Give a visual indication of the yanked region',
	callback = function() vim.highlight.on_yank({ higroup = 'Visual', timeout = 200 }) end,
})
