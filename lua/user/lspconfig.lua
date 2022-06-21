require("which-key").register({
  d = {
    name = 'Diagnostics',
    d = { vim.diagnostic.open_float, 'Show diagnostics in a floating window' },
    j = { vim.diagnostic.goto_next, 'Go to the next diagnostic' },
    k = { vim.diagnostic.goto_prev, 'Go to the previous diagnostic' },
    l = { vim.diagnostic.setloclist, 'Add the buffer diagnostics to the location list' },
    c = { vim.diagnostic.setqflist, 'Add the all diagnostics to the quickfix list' },
  }
}, {
  prefix = '<Leader>',
});

local on_attach = function(client, bufnr)
  local _ = client;

  vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap=true, silent=true, buffer=bufnr })
  require('which-key').register({
    name = 'LSP',
    d = { vim.lsp.buf.definition, 'Jump to definition' },
    D = { vim.lsp.buf.declaration, 'Jump to declaration' },
    t = { vim.lsp.buf.type_definition, 'Jump to the definition' },
    i = { vim.lsp.buf.implementation, 'List all the implementations in the quickfix window' },
    R = { vim.lsp.buf.references, 'List all the references in the quickfix window' },
    s = { vim.lsp.buf.signature_help, 'Show signature help' },
    r = { vim.lsp.buf.rename , 'Rename the symbol' },
    a = { vim.lsp.buf.code_action, 'Select a code action' },
    f = { vim.lsp.buf.formatting, 'Formats the current buffer' },

    w = {
      name = 'Workspaces',
      a = { vim.lsp.buf.add_workspace_folder, 'Add a folder to the workspace' },
      r = { vim.lsp.buf.remove_workspace_folder, 'Remove a folder to the workspace' },
      l = {
        function () vim.pretty_print(vim.lsp.buf.list_workspace_folders()) end,
        'List all the workspace folders'
      }
    },
  }, {
      prefix = '<Leader>l',
      buffer = bufnr,
  });
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
});

require('lspconfig').sumneko_lua.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { 'vim' },
      },
      telemetry = {
        enable = false,
      },
    },
  },
});
