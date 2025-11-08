return {
	{
		'nvim-telescope/telescope.nvim',
		branch = 'master',
		dependencies = {
			{ 'nvim-lua/plenary.nvim' },
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},
		opts = function()
			local actions = require('telescope.actions')
			local state = require('telescope.actions.state')

			local new_file = function()
				local entry = state.get_selected_entry() or { value = vim.notify(state.get_current_line()) }
				vim.ui.input({ prompt = "please enter file name: ", default = entry.value }, function(input)
					if not (input and input ~= "") then vim.notify("canceled") else
						local prompt = vim.fn.expand('%:p:h') .. '/' .. input
						local success, _ = pcall(function()
							vim.fn.mkdir(vim.fn.expand('%:p:h'), 'p')
							vim.fn.writefile({}, prompt)
						end)
						if not success then vim.notify("failed to create file") else
							vim.notify("created " .. input)
							vim.cmd("e! " .. prompt)
						end
					end
				end)
			end

			local delete_file = function()
				local entry = state.get_selected_entry()
				if not entry then vim.notify("deletion requires file", vim.log.levels.WARN) else
					vim.ui.input({ prompt = "delete " .. entry.value .. "? ", default = "" }, function(input)
						if input == "y" or input == "yes" or input == "Y" or input == "YES" or input == "Yes" then
							vim.fs.rm(vim.fn.expand('%:p:h') .. '/' .. entry.value)
							vim.notify(entry.value .. " deleted")
						else vim.notify("canceled") end
					end)
				end
			end
			return {
				defaults = {
					preview = {
						filesize_limit = 0.1 -- MB
					},
					initial_mode = "insert",
					winblend = 30,
					file_ignore_patterns = {
						"%.git/.*",
						"^%./lib/.*",
						"^%./bin/.*",
						"%.cache/.*",
						".*%.[od]",
					},
					layout_strategy = 'flex',
					mappings = {
						n = {
							["nf"]	= new_file,
							["df"]	= delete_file,
							["q"]		= actions.close,
						}
					}
				},
				pickers = {
					find_files = { follow = true, hidden = true, },
					live_grep = { follow = true, hidden = true, initial_mode = 'insert', },
				}
			}
		end,
		keys = function()
			local builtin = require('telescope.builtin')
			return {
				{ "<leader>fd", desc = "Telescope find files", builtin.find_files, },
				{ "<leader>fs", desc = "Telescope find siblings", function() builtin.find_files({ cwd = vim.fn.expand('%:p:h') }) end, },
				{ "<leader>en", desc = "Telescope edit neovim", function() builtin.find_files({ cwd = vim.fn.stdpath("config"), }) end, },
				{ "<leader>fg", desc = "Telescope live grep", builtin.live_grep, },
			}
	end,
	}
}
