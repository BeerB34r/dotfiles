return {
	"danymat/neogen",
	config = function(opts)
		require('neogen').setup(opts)
		vim.keymap.set( "n", "<leader>d", ":Neogen<CR>", { desc = "generate documentation for current cursor position" })
	end,
	opts = {},
}
