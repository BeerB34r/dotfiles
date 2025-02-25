local map = vim.keymap.set

map("n", "<space><space>x", "<cmd>source %<CR>")
map("n", "<space><space>r", "<cmd>source ~/.config/nvim/init.lua<CR>")
map("n", "<space>x", ":.lua<CR>")
map("v", "<space>x", ":lua<CR>")
-- hjkl supremacy
map("n", "<left>", ":lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("n", "<right>", ":lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("n", "<up>", ":lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("n", "<down>", ":lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("v", "<left>", "<C-u>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("v", "<right>", "<C-u>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("v", "<up>", "<C-u>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("v", "<down>", "<C-u>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("i", "<left>", "<C-o>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("i", "<right>", "<C-o>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("i", "<up>", "<C-o>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
map("i", "<down>", "<C-o>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>")
