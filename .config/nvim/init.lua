-- i use neovim btw
-- i run arch btw (a lie)
-- brazil mentioned btw

-- requirements
require("config.lazy")

-- keymaps
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")
--vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
--vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
--vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
--vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
-- base options
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus" -- paste-buffer == system clipboard

-- autocmds
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
