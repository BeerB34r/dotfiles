local uc = vim.api.nvim_create_user_command
local ac = vim.api.nvim_create_autocmd
local aug = vim.api.nvim_create_augroup

-- User commands
uc("Norminette", '!norminette %', { desc = "Run norminette on current file" })
uc("W", "w|Norminette", { desc = "write file, then run Norminette" })

-- Auto commands
ac('TextYankPost', {
	desc = 'Highlight when yanking text',
	group = aug('highlight-yank', {clear = true}),
	callback = function() vim.highlight.on_yank() end,
})
ac('LspAttach', {
	desc = 'Notify user about attached LSP clients',
	group = aug('LSPOnAttach', {clear = true}),
	callback = function(event)
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client then
			vim.notify( client.name .. " attached", vim.log.levels.INFO, {})
		end
	end,
})
ac('FileType', {
	pattern = { '<filetype>' },
	callback = function() vim.treesitter.start() end,
})
