local null_ls = require('null-ls')

local sources = {
	null_ls.builtins.formatting.prettierd.with({
		extra_filetypes = { 'svelte' },
	}),
	null_ls.builtins.formatting.stylua,
}

null_ls.setup({
	sources = sources,
})
