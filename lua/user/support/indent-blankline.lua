local colors = require('catppuccin.api.colors').get_colors()

vim.cmd('highlight IndentBlanklineIndentBg1 guibg=' .. colors.base .. ' gui=nocombine')
vim.cmd('highlight IndentBlanklineIndentBg2 guibg=' .. colors.mantle .. ' gui=nocombine')

require('indent_blankline').setup {
  char = '',
  show_current_context = true,
  show_current_context_start = true,
  show_end_of_line = true,
  space_char_highlight_list = {
    'IndentBlanklineIndentBg1',
    'IndentBlanklineIndentBg2',
  },
}
