require('neorg').setup {
  load = {
    ["core.defaults"] = {},
    ["core.export"] = {},
    ["core.norg.concealer"] = {},
    ["core.norg.completion"] = {
      config = {
        engine = "nvim-cmp"
      }
    }
  }
}
