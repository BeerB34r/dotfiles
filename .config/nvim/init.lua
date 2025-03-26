-- i use neovim btw
-- i use arch btw
-- brazil mentioned btw

-- requirements
require("config.keymaps")
require("config.options")
require("config.lazy")
-- autocmds
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_user_command( "Norminette", '!norminette %', { desc = "run norminette on current file" })
vim.api.nvim_create_user_command( "W", "w|Norminette", { desc = "write file, then run Norminette" })
