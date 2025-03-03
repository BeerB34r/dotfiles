local map = vim.keymap.set

map("n", "<space><space>x", "<cmd>source %<CR>", { desc = "source current file" })
map("n", "<space><space>r", "<cmd>source ~/.config/nvim/init.lua<CR>", { desc = "reload init.lua" })
map("n", "<space>x", ":.lua<CR>", { desc = "interpret and run current line as lua" })
map("v", "<space>x", ":lua<CR>", { desc = "interpret and run current selection as lua" })
-- hjkl supremacy
map("n", "<left>", ":lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("n", "<right>", ":lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("n", "<up>", ":lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("n", "<down>", ":lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("v", "<left>", "<C-u>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("v", "<right>", "<C-u>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("v", "<up>", "<C-u>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("v", "<down>", "<C-u>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("i", "<left>", "<C-o>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("i", "<right>", "<C-o>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("i", "<up>", "<C-o>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
map("i", "<down>", "<C-o>:lua vim.notify('hjkl supremacy', vim.log.levels.ERROR)<CR>", { desc = "hjkl supremacy" })
