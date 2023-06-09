local sysname = vim.loop.os_uname().sysname
local url_open
if sysname == 'Linux' then
  url_open = 'xdg-open'
elseif sysname == 'Darwin' then
  url_open = 'open'
elseif sysname == 'Windows' then
  url_open = 'start ""'
end

require('mind').setup({
  persistence = {
    state_path = '~/.local/share/mind.nvim/mind.json',
    data_dir = '~/.local/share/mind.nvim/data'
  },

  edit = {
    data_extention = '.md',
    data_header = '# %s',
    copy_link_format = '[](%s)'
  },

  tree = {
    automatic_creation = true,
    automatic_data_creation = false
  },

  ui = {
    url_open = url_open,
    width = 30,
    empty_indent_marker = '│',
    node_indent_marker = '└',
    root_marker = ' ',
    local_marker = 'local',
    data_marker = ' ',
    url_marker = ' ',
    select_marker = '',
    
    highlight = {
      closed_marker = 'LineNr',
      open_marker = 'LineNr',
      node_root = 'Function',
      node_leaf = 'String',
      node_parent = 'Title',
      local_marker = 'Comment',
      data_marker = 'Comment',
      url_marker = 'Comment',
      modifier_empty = 'Comment',
      select_marker = 'Error',
    },

    icon_preset = {
      { ' ', 'Sub-project' },
      { ' ', 'Journal, newspaper, weekly and daily news' },
      { ' ', 'For when you have an idea' },
      { ' ', 'Note taking?' },
      { '陼', 'Task management' },
      { ' ', 'Uncheck, empty square or backlog' },
      { ' ', 'Full square or on-going' },
      { ' ', 'Check or done' },
      { ' ', 'Trash bin, deleted, cancelled, etc.' },
      { ' ', 'GitHub' },
      { ' ', 'Monitoring' },
      { ' ', 'Internet, Earth, everyone!' },
      { ' ', 'Frozen, on-hold' },
    }
  },

  keymaps = {
    normal = {
      ['<cr>'] = 'toggle_node',
      ['<s-cr>'] = 'toggle_parent',
      ['<s-tab>'] = 'open_data_index',
      ['/'] = 'select_path',
      ['$'] = 'change_icon_menu',
      o = 'open_data',
      c = 'add_inside_end_index',
      I = 'add_inside_start',
      i = 'add_inside_end',
      l = 'copy_node_link',
      L = 'copy_node_link_index',
      d = 'delete',
      D = 'delete_file',
      A = 'add_above',
      a = 'add_below',
      q = 'quit',
      r = 'rename',
      R = 'change_icon',
      u = 'make_url',
      x = 'select',
    },

    selection = {
      ['<cr>'] = 'toggle_node',
      ['<s-cr>'] = 'toggle_parent',
      ['/'] = 'select_path',
      o = 'open_data',
      I = 'move_inside_start',
      i = 'move_inside_end',
      a = 'move_above',
      b = 'move_below',
      q = 'quit',
      x = 'select',
    },
  }
})
