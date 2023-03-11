require('bufferline').setup {
  options = {
    number = 'ordinal',
    offsets = {{
      filetype = 'NvimTree',
      text = 'File Explorer',
      text_align = 'center',
      seperator = true
    }},
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icon = true,
    show_tab_indicators = true,
    seperator_style = 'thick'
  }
}
