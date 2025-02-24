local map = vim.keymap.set

map("n", "<space><space>x", "<cmd>source %<CR>")
map("n", "<space><space>r", "<cmd>source ~/.config/nvim/init.lua<CR>")
map("n", "<space>x", ":.lua<CR>")
map("v", "<space>x", ":lua<CR>")
map("n", "<left>", ":echoe 'hjkl supremacy'<CR>")
map("n", "<right>", ":echoe 'hjkl supremacy'<CR>")
map("n", "<up>", ":echoe 'hjkl supremacy'<CR>")
map("n", "<down>", ":echoe 'hjkl supremacy'<CR>")
map("v", "<left>", "<C-u>:echoe 'hjkl supremacy'<CR>")
map("v", "<right>", "<C-u>:echoe 'hjkl supremacy'<CR>")
map("v", "<up>", "<C-u>:echoe 'hjkl supremacy'<CR>")
map("v", "<down>", "<C-u>:echoe 'hjkl supremacy'<CR>")
map("i", "<left>", "<C-o>:echoe 'hjkl supremacy'<CR>")
map("i", "<right>", "<C-o>:echoe 'hjkl supremacy'<CR>")
map("i", "<up>", "<C-o>:echoe 'hjkl supremacy'<CR>")
map("i", "<down>", "<C-o>:echoe 'hjkl supremacy'<CR>")
