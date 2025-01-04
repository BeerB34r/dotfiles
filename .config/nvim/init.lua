-- i use neovim btw
-- i run arch btw (a lie)
-- brazil mentioned btw

-- requirements
require("config.lazy")

-- keymaps
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space><space>r", "<cmd>source .config/nvim/init.lua<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")
--vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
--vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
--vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
--vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
-- base options
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.textwidth = 80
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.list = true
vim.opt.listchars:append { tab = 'ᘳ-ᘰ', space = 'ᘯ', eol = 'ᘱ' }
vim.opt.colorcolumn = '+1'
vim.opt.wrap = false
vim.opt.swapfile = false

vim.opt.clipboard = "unnamedplus" -- paste-buffer == system clipboard

-- autocmds
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_user_command( "Norminette", '!norminette %', {})
vim.api.nvim_create_user_command( "W", "w|Norminette", {})
