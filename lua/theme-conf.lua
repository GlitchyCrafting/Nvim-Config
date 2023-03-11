require('dashboard')

require('transparent').setup {
  enable = true,
  extra_groups = {'all'}
}

require('fidget').setup()

require('lualine').setup()

require('bufferline').setup()

require('barbecue').setup()

require('modicator').setup()

require('codewindow').setup()

require('winshift').setup()
