local mappings = {
    { key = { '<CR>', '<2-LeftMouse>' },      action = 'edit' },
    -- { key = '<C-e>',                          action = 'edit_in_place' },
    -- { key = 'O',                              action = 'edit_no_picker' },
    { key = { '>', '<2-RightMouse>' },        action = 'cd' },
    { key = '|',                              action = 'vsplit' },
    { key = '-',                              action = 'split' },
    { key = 't',                              action = 'tabnew' },
    -- { key = '<',                              action = 'prev_sibling' },
    -- { key = '>',                              action = 'next_sibling' },
    -- { key = 'P',                              action = 'parent_node' },
    { key = '<BS>',                           action = 'close_node' },
    { key = '<Tab>',                          action = 'preview' },
    -- { key = 'K',                              action = 'first_sibling' },
    -- { key = 'J',                              action = 'last_sibling' },
    { key = 'i',                              action = 'toggle_git_ignored' },
    { key = 'h',                              action = 'toggle_dotfiles' },
    -- { key = 'U',                              action = 'toggle_custom' },
    { key = '<C-r>',                          action = 'refresh' },
    { key = 'a',                              action = 'create' },
    { key = 'X',                              action = 'remove' },
    { key = 'x',                              action = 'trash' },
    { key = 'r',                              action = 'rename' },
    { key = 'R',                              action = 'full_rename' },
    { key = 'x',                              action = 'cut' },
    { key = 'y',                              action = 'copy' },
    { key = 'p',                              action = 'paste' },
    -- { key = 'y',                              action = 'copy_name' },
    { key = 'Y',                              action = 'copy_path' },
    { key = '<C-y>',                          action = 'copy_absolute_path' },
    -- { key = '[c',                             action = 'prev_git_item' },
    -- { key = ']c',                             action = 'next_git_item' },
    { key = '<',                              action = 'dir_up' },
    { key = '<C-CR>',                         action = 'system_open' },
    { key = 'f',                              action = 'live_filter' },
    { key = 'F',                              action = 'clear_live_filter' },
    { key = 'q',                              action = 'close' },
    { key = '\\',                             action = 'collapse_all' },
    { key = '/',                              action = 'expand_all' },
    -- { key = 'S',                              action = 'search_node' },
    { key = '.',                              action = 'run_file_command' },
    { key = '<C-i>',                          action = 'toggle_file_info' },
    { key = '?',                              action = 'toggle_help' },
}

require('nvim-tree').setup({
  open_on_setup = true,
  reload_on_bufenter = true,
  view = {
    mappings = {
     custom_only = true,
     list = mappings,
    }
  },
})

require('which-key').register({
  e = { '<cmd>NvimTreeToggle<CR>', 'Toggle File Explorer' },
}, { prefix = '<Leader>' });
