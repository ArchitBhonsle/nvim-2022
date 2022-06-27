vim.api.nvim_create_augroup('user', { clear = true })

vim.api.nvim_create_autocmd('BufWritePre', {
  group = 'user',
  desc = 'Format the file on save',
  callback = function()
    local null_ls_client = nil
    for _, client in ipairs(vim.lsp.buf_get_clients()) do
      if client.name == 'null-ls' then
        null_ls_client = client
        break
      end
    end

    if null_ls_client == nil then
      vim.lsp.buf.formatting_sync()
    else
      local params = vim.lsp.util.make_formatting_params {}
      null_ls_client.request('textDocument/formatting', params, nil, vim.api.nvim_get_current_buf())
    end
  end,
})

vim.api.nvim_create_autocmd('TextYankPost', {
  group = 'user',
  desc = 'Give a visual indication of the yanked region',
  callback = function()
    vim.highlight.on_yank { higroup = 'Visual', timeout = 200 }
  end,
})
