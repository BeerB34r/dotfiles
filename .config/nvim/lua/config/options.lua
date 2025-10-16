local opt = vim.opt
local g = vim.g

opt.shiftwidth = 4
opt.tabstop = 4
opt.number = true
opt.relativenumber = true
opt.textwidth = 80
opt.showcmd = true
opt.showmatch = true
opt.smartindent = true
opt.autoindent = true
opt.list = true
opt.listchars:append { tab = 'ᘳ-ᘰ', space = 'ᘯ', eol = 'ᘱ' }
opt.colorcolumn = '+1'
opt.wrap = false
opt.swapfile = false
opt.mouse = {}
opt.cursorline = true
opt.cursorlineopt = "number"
opt.incsearch = true
opt.signcolumn = "yes"
opt.foldenable = true
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.lsp.foldexpr()"
opt.fillchars = 'eob: ,fold: ,foldopen:,foldsep: ,foldclose:'
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldcolumn = '0'
g.c_syntax_for_h = true
g.mapleader = " "
g.maplocalleader = "\\"

opt.clipboard = "unnamedplus" -- paste-buffer == system clipboard
