local rt = require('rust-tools')

rt.setup({
	tools = {
		inlay_hints = {
			parameter_hints_prefix = '  ',
			other_hints_prefix = '  ',
		},
	},
	server = {
		standalone = true,
		on_attach = function(client, bufnr)
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

			require('which-key').register({
				name = 'Language Specific',
				a = { rt.code_action_group.code_action_group, 'Show group code actions' },
				r = { rt.runnables.runnables, 'Show runnables' },
				m = { rt.expand_macro.expand_macro, 'Expand macro' },
				p = { rt.parent_module.parent_module, 'Open parent module' },
				j = { function() rt.move_item.move_item(false) end, 'Move item down' },
				k = { function() rt.move_item.move_item(true) end, 'Move item up' },
			}, {
				prefix = '<Leader>ll',
				buffer = bufnr,
			})
		end,
	},
})
