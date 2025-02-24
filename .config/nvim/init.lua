-- i use neovim btw
-- i run arch btw
-- brazil mentioned btw

-- requirements
require("config.lazy")
require("config.keymaps")
require("config.options")

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
