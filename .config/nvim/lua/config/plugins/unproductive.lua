return {
	{ "alec-gibson/nvim-tetris" },
	{ "alex-popov-tech/store.nvim", dependencies = { "OXY2DEV/markview.nvim" }, opts = {}, cmd = "Store" },
	{
		"andweeb/presence.nvim",
		opts = {
			auto_update = true,
			neovim_image_text = "The One True Text Editor",
			main_image = "file", -- "neovim" || "file"
			enable_line_number = false,
			blacklist = {},
			buttons = true,
			show_time = true,

			editing_text = "Editing %s",
			file_explorer_text = "Browsing %s",
			git_commit_text = "Committing changes",
			plugin_manager_text = "Managing plugins",
			reading_text = "Reading %s",
			workspace_text = "Working on %s",
			line_number_text = "Line %s out of %s",
		},
	},
}
