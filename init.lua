---------------------------------------------
------------ GC'S NEOVIM CONFIG ------------
---- Neovim website: https:--neovim.io/ ----
--------------------------------------------

local g          = vim.g
local o          = vim.o
local opt        = vim.opt
local A          = vim.api

o.termguicolors  = true
o.t_Co           = 256
o.timeoutlen     = 0
o.scrolloff      = 5
o.number         = true
o.numberwidth    = 2
o.relativenumber = true
o.signcolumn     = 'yes'
o.cursorline     = true
o.expandtab      = true
o.smarttab       = true
o.cindent        = true
o.autoindent     = true
o.wrap           = true
o.textwidth      = 300
o.tabstop        = 4
o.shiftwidth     = 4
o.softtabstop    = -1
o.formatoptions  = 'qrn1'
o.ignorecase     = true
o.smartcase      = true
o.backup         = false
o.writebackup    = false
o.undofile       = true
o.swapfile       = false
o.history        = 50
o.splitright     = true
o.splitbelow     = true
o.foldmethod     = 'indent'
o.foldlevelstart = 99
o.foldnestmax    = 3
o.foldminlines   = 1
opt.mouse        = "a"
g.mapleader      = ' '
g.maplocalleader = ' '
g.popui_border_style = "rounded"
g.transparent_enabled = true

vim.ui.select = require("popui.ui-overrider")
vim.ui.input = require("popui.input-overrider")

A.nvim_exec([[colorscheme glitchcandy]], true)
A.nvim_create_autocmd('TextYankPost', {
	group = num_au,
	callback = function()
		vim.highlight.on_yank({higroup = 'Visual', timeout = 5000})
	end
})

Lsp_signature_cfg = { hint_prefix = "", floating_window = true }
require('lsp_signature').setup(Lsp_signature_cfg)

require('plugins')
require('lsp-conf')
require('nvimcmp-conf')
require('bufferline-conf')
require('mind-conf')
require('neorg-conf')
require('rust-conf')
require('treesitter-conf')
require('wilder-conf')
require('whichkey-conf')
require('misc-conf')
require('theme-conf')
