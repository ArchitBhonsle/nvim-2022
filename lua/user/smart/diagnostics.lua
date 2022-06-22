local signs = {
  { name = 'DiagnosticSignError', text = '' },
  { name = 'DiagnosticSignWarn', text = '' },
  { name = 'DiagnosticSignHint', text = '' },
  { name = 'DiagnosticSignInfo', text = '' },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = '' })
end

vim.diagnostic.config {
  virtual_text = false,
  update_in_insert = true,
  severity_sort = true,
}

require('which-key').register({
  d = {
    name = 'Diagnostics',
    d = { vim.diagnostic.open_float, 'Show diagnostics in a floating window' },
    j = { vim.diagnostic.goto_next, 'Go to the next diagnostic' },
    k = { vim.diagnostic.goto_prev, 'Go to the previous diagnostic' },
    l = { vim.diagnostic.setloclist, 'Add the buffer diagnostics to the location list' },
    c = { vim.diagnostic.setqflist, 'Add the all diagnostics to the quickfix list' },
  },
}, {
  prefix = '<Leader>',
})