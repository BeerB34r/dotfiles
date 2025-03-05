return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},
		config = function()
			require('telescope').setup {
				defaults = {
					initial_mode = "normal",
					winblend = 30,
					file_ignore_patterns = {
						"%.git/.*",
						"lib/.*",
						"bin/.*",
						"%.cache/.*",
						".*%.o",
					}
				}
			}
			vim.keymap.set("n", "<leader>fd", function()
				require('telescope.builtin').find_files {
					follow = true,
					hidden = true,
				}
			end, { desc = "telescope find files" })
			vim.keymap.set("n", "<leader>en", function()
				require('telescope.builtin').find_files {
					cwd = vim.fn.stdpath("config"),
					follow = true,
					hidden = true,
				}
			end, { desc = "telescope edit neovim" })
			vim.keymap.set("n", "<leader>fg", function()
				require('telescope.builtin').live_grep {
					follow = true,
					hidden = true,
					initial_mode = "insert",
				}
			end, { desc = "telescope live grep"})
		end
	}
}
