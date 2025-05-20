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
					initial_mode = "insert",
					winblend = 30,
					file_ignore_patterns = {
						"%.git/.*",
						"^%./lib/.*",
						"^%./bin/.*",
						"%.cache/.*",
						".*%.o",
					},
					layout_strategy = 'flex',
					mappings = {
						n = {
							["nf"] = function()
								local entry = require('telescope.actions.state').get_selected_entry()
								if not entry then
									entry = { value = vim.notify(require('telescope.actions.state').get_current_line()) }
								end
								vim.ui.input({ prompt = "please enter file name: ", default = entry.value }, function(input)
									if input and input ~= "" then
										local prompt = vim.fn.expand('%:p:h') .. '/' .. input
										local success, _ = pcall(function()
											vim.fn.mkdir(vim.fn.expand('%:p:h'), 'p')
											vim.fn.writefile({}, prompt)
										end)
										if success then
											vim.notify("created " .. input)
											vim.cmd("e! " .. prompt)
										else
											vim.notify("failed to create file")
										end
									else
										vim.notify("canceled")
									end
								end)
							end,
							["df"] = function()
								local entry = require('telescope.actions.state').get_selected_entry()
								if entry then
									vim.ui.input({ prompt = "delete " .. entry.value .. "? ", default = "" }, function(input)
										if input == "y" or input == "yes" or input == "Y" or input == "YES" or input == "Yes" then
											vim.fs.rm(vim.fn.expand('%:p:h') .. '/' .. entry.value)
											vim.notify(entry.value .. " deleted")
										else
											vim.notify("canceled")
										end
									end)
									else
										vim.notify("deletion requires file", vim.log.levels.WARN)
								end
							end
						}
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
		end,
	}
}
