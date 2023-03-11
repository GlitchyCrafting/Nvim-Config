local cmp = require('cmp')

cmp.setup({
  snippet = { 
    expand = function(args) 
      require('luasnip').lsp_expand(args.body) 
    end 
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4)),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4)),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item()),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item()),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete()),
    ['<C-e>'] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close(), }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({ 
    { name = 'nvim_lsp' }, 
    { name = 'luasnip' },
    { name = "path" },
    { name = 'orgmode' },
    { name = 'crates' },
    { name = 'buffer' },
  })
})
