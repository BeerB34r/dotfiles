return {
	"danymat/neogen",
	config = function()
		require('neogen').setup({})
		vim.keymap.set( "n", "<leader>d", ":Neogen<CR>", { desc = "generate documentation for current cursor position" })
	end,
}
