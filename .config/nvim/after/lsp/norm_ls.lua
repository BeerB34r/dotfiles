return {
	cmd = { vim.env.HOME .. "/languageservers/norm_ls" },
	filetypes = { "c" },
	default_config = {
		cmd = { vim.env.HOME .. "/languageservers/norm_ls" },
		filetypes = { "c" },
		single_file_support = true,
		root_dir = function(fname)
			return vim.fs.dirname(fname) or vim.fn.getcwd()
		end,
	},
}
