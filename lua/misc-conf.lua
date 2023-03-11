require('ccc').setup()

require('neoclip').setup()

require('symbols-outline').setup()

require('peek').setup()

require('Comment').setup()

require('todo-comments').setup()

require('nvim-autopairs').setup()

require('goto-preview').setup()

require('trouble').setup()

require('project_nvim').setup()

require('nvim-highlight-colors').setup()

require('tidy').setup()

require('leap').add_default_mappings()

require('nvim-tree').setup {hijack_directories = {enable = false}}

require('image').setup {
    render = {
        min_padding = 5,
        show_label = true,
        use_dither = true,
        foreground_color = true,
        background_color = true
    },
    events = {update_on_nvim_resize = true}
}
