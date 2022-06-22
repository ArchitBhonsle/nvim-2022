local cache_dir = vim.fn.stdpath('cache')

local options = {
  cmdheight = 2, -- more lines for the command-line
  completeopt = { 'menuone', 'preview', 'noselect' }, -- set the options
  foldmethod = 'expr', -- set the method for folding
  foldexpr = 'nvim_treesitter#foldexpr()', -- using treesitter for folding
  foldlevel = 10, -- keep folds of at least 10 depth open
  ignorecase = true, -- makes the search case insensitive
  smartcase = true, -- makes the search case sensitive for capital letters
  mouse = 'a', -- allow the mouse to be used in neovim
  pumheight = 10, -- height of the completion menu
  showmode = false, -- remove the mode information on the last line
  smartindent = true, -- smartly adds indents when starting a new line
  expandtab = true, -- convert tabs to spaces
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  tabstop = 2, -- number of spaces a <Tab> is interpreted as
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  termguicolors = true, -- uses 24-bit RGB colors
  laststatus = 3, -- global statusline
  title = true, -- set the title of window to the value of the titlestring
  titlestring = '%<%t - nvim', -- what the title of the window will be set to
  timeoutlen = 500, -- time to wait for a mapped sequence to complete
  swapfile = false, -- disable swap files
  undofile = true, -- enable persistent undo
  undodir = cache_dir .. '/undo', -- all the undofiles are places here
  shadafile = cache_dir .. '/shada', -- path to the shada file
  updatetime = 300, -- faster completion
  number = true, -- set numbered lines
  relativenumber = true, -- set relative numbered lines
  numberwidth = 4, -- set number column width to 2 {default 4}
  signcolumn = 'yes', -- always show the sign column, otherwise it would shift the text each time
  wrap = false, -- display lines as one long line
  scrolloff = 15, -- minimal number of screen lines to keep above and below the cursor.
  sidescrolloff = 10, -- minimal number of screen lines to keep left and right of the cursor.
  list = true, -- helps in visualising invisible characters
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append('cI')
vim.opt.whichwrap:append('<,>,[,]')

vim.opt.listchars:append('eol:↴')

vim.g.mapleader = ' '
