require('telescope').setup {
  defaults = {
    layout_config = {
      width = 0.8,
      prompt_position = "top",
      preview_cutoff = 120
    },
    find_command = { 'rg', '--no-heading', '--with-filename', '--line-number', '--coulmn', '--smart-case' },
    hidden = true,
    prompt_prefix = "   ",
    selection_caret = " ",
    entry_prefix = " ",
    color_devicons = true
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
    },
  }
}

require('telescope').load_extension('file_browser')

require('nvim-treesitter.configs').setup {
  enable = true,
  filetypes = {'html'}
}
