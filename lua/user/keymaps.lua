local keyset = vim.keymap.set

-- easy movement between splits
keyset('n', '<C-l>', '<C-w>l')
keyset('n', '<C-k>', '<C-w>k')
keyset('n', '<C-j>', '<C-w>j')
keyset('n', '<C-h>', '<C-w>h')

-- resize with arrow keys
keyset('n', '<C-Right>', ':vertical resize +2<CR>')
keyset('n', '<C-Left>', ':vertical resize -2<CR>')
keyset('n', '<C-Up>', ':resize +2<CR>')
keyset('n', '<C-Down>', ':resize -2<CR>')

-- better indentation
keyset('v', '<', '<gv')
keyset('v', '>', '>gv')

-- quickfix list
keyset('n', '<LEADER>]', ':cnext<CR>')
keyset('n', '<LEADER>[', ':cprev<CR>')
-- location list
keyset('n', '<LEADER>}', ':cnext<CR>')
keyset('n', '<LEADER>{', ':cprev<CR>')
