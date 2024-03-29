local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
	local _ = client

	vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true, buffer = bufnr })
	require('which-key').register({
		name = 'LSP',
		d = { vim.lsp.buf.definition, 'Jump to definition' },
		D = { vim.lsp.buf.declaration, 'Jump to declaration' },
		t = { vim.lsp.buf.type_definition, 'Jump to the definition' },
		i = { vim.lsp.buf.implementation, 'List all the implementations in the quickfix window' },
		R = { vim.lsp.buf.references, 'List all the references in the quickfix window' },
		s = { vim.lsp.buf.signature_help, 'Show signature help' },
		r = { vim.lsp.buf.rename, 'Rename the symbol' },
		a = { vim.lsp.buf.code_action, 'Select a code action' },
		f = { vim.lsp.buf.formatting, 'Formats the current buffer' },

		w = {
			name = 'Workspaces',
			a = { vim.lsp.buf.add_workspace_folder, 'Add a folder to the workspace' },
			r = { vim.lsp.buf.remove_workspace_folder, 'Remove a folder to the workspace' },
			l = {
				function() vim.pretty_print(vim.lsp.buf.list_workspace_folders()) end,
				'List all the workspace folders',
			},
		},
	}, {
		prefix = '<Leader>l',
		buffer = bufnr,
	})
end

local servers = {
	-- 'rust_analyzer', -- rust-analyzer || REMOVED in favour of the rust-tools plugin
	'lua_ls', -- lua-language-server
	'gopls', -- gopls
	'pylsp', -- python-lsp-server
	'clangd', -- clang
}

for _, server in ipairs(servers) do
	local opts = {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	local settings_exist, settings = pcall(require, 'user.smart.lsp.settings.' .. server)
	if settings_exist then opts = vim.tbl_deep_extend('keep', settings, opts) end

	lspconfig[server].setup(opts)
end
