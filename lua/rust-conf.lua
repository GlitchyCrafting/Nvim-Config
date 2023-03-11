require('crates').setup {
  popup = {border = 'rounded'}
}

local rt = require('rust-tools')
local ih = require('inlay-hints')

ih.setup {
  only_current_line = false,
  eol = {right_alighn = true}
}

rt.setup {
  server = {
    on_attach = function(client, bufnr)
      vim.keymap.set('n', '<Leader>rh', rt.hover_actions.hover_actions, {buffer = bufnr})
      vim.keymap.set('n', '<Leader>ra', rt.code_action_group.code_action_group, {buffer = bufnr})
      ih.on_attach(client, bufnr)
    end
  }
}

rt.inlay_hints.enable()
