local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https:--github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup({function()

  -- Deps
  use 'nvim-lua/plenary.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Packer
  use 'wbthomason/packer.nvim'

  -- Comments
  use 'numToStr/Comment.nvim'
  use 'folke/todo-comments.nvim'

  -- Git
  use 'f-person/git-blame.nvim'

  -- FZF
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'ray-x/lsp_signature.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'f3fora/cmp-spell'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'gelguy/wilder.nvim'

  -- Rust
  use {'Saecki/crates.nvim', tag = 'v0.3.*'}
  use 'simrat39/inlay-hints.nvim'
  use 'simrat39/rust-tools.nvim'
  use 'lvimuser/lsp-inlayhints.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-ts-autotag'

  -- Theming
  use "http://gcserver.home:3000/GlitchyCrafting/GlitchCandy.git"
  use "darker-dracula/vim"
  use "hood/popui.nvim"
  use 'xiyaowong/nvim-transparent'
  use 'j-hui/fidget.nvim'
  use 'nvim-lualine/lualine.nvim'
  use {'akinsho/bufferline.nvim', tag = 'v3.*'}
  use 'smiteshp/nvim-navic'
  use 'utilyre/barbecue.nvim'
  use 'mawkler/modicator.nvim'
  use 'gorbit99/codewindow.nvim'
  use 'goolord/alpha-nvim'

  -- Colors
  use 'uga-rosa/ccc.nvim'
  use 'brenoprata10/nvim-highlight-colors'

  -- Keys
  use 'folke/which-key.nvim'

  -- Indent
  use 'lukas-reineke/indent-blankline.nvim'

  -- Trees
  use 'simrat39/symbols-outline.nvim'
  use 'kyazdani42/nvim-tree.lua'

  -- Misc
  use 'folke/trouble.nvim'
  use 'rktjmp/highlight-current-n.nvim'
  use 'elihunter173/dirbuf.nvim'
  use 'ahmedkhalf/project.nvim'
  use 'm00qek/baleia.nvim'
  use 'samodostal/image.nvim'
  use 'jghauser/mkdir.nvim'
  use 'tpope/vim-repeat'
  use 'ggandor/leap.nvim'
  use 'mcauley-penney/tidy.nvim'
  use 'filipdutescu/renamer.nvim'
  use 'sindrets/winshift.nvim'

  -- Auto Pairs
  use 'windwp/nvim-autopairs'

  -- Documentation
  use {'toppair/peek.nvim', run = 'deno task --quiet build:fast'}
  use {'nvim-neorg/neorg', run = ":Neorg sync-parsers"}
  use 'phaazon/mind.nvim'
  use 'rmagatti/goto-preview'
  use 'LudoPinelli/comment-box.nvim'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Games
  use 'alec-gibson/nvim-tetris'
  use 'seandewar/nvimesweeper'

  -- Clipboard
  use { 'AckslD/nvim-neoclip.lua', requires = {{'kkharji/sqlite.lua', module = 'sqlite'}}}

   if packer_bootstrap then
    require('packer').sync()
  end

end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single'})
    end
  }
}})
