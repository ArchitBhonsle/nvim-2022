local keyset = vim.keymap.set

-- easy movement between splits
keyset('n', '<A-l>', '<C-w>l')
keyset('n', '<A-k>', '<C-w>k')
keyset('n', '<A-j>', '<C-w>j')
keyset('n', '<A-h>', '<C-w>h')

-- resize with arrow keys
keyset('n', '<A-Right>', ':vertical resize +2<CR>')
keyset('n', '<A-Left>', ':vertical resize -2<CR>')
keyset('n', '<A-Up>', ':resize +2<CR>')
keyset('n', '<A-Down>', ':resize -2<CR>')

-- better indentation
keyset('v', '<', '<gv')
keyset('v', '>', '>gv')
