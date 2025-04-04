return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			local lspconf = require("lspconfig")

			lspconf.lua_ls.setup {}
			lspconf.clangd.setup {}

			require("lspconfig.configs").norm_ls = {
				default_config = {
					cmd = { "python3", "/home/mde-beer/languageservers/norm_ls.py" },
					filetypes = { "c" },
					single_file_support = true,
					root_dir = function(fname)
						return vim.fs.dirname(fname) or vim.fn.getcwd()
					end,
				},
			}
			lspconf.norm_ls.setup {}

			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("LSPOnAttach", { clear = true }),
				callback = function(event)
					local client = vim.lsp.get_client_by_id(event.data.client_id)
					vim.notify( client.name .. " attached", vim.log.levels.INFO, {})
				end})
			vim.keymap.set( "n", "gre", vim.diagnostic.setloclist, { desc = "display error information" })
			vim.keymap.set( "n", "gse", function()
				local new_config = not vim.diagnostic.config().virtual_text
				vim.diagnostic.config({ virtual_text = new_config })
			end, { desc = "display errors as virtual text" })
			vim.keymap.set( "n", "gle", function()
				local new_config = not vim.diagnostic.config().virtual_lines
				vim.diagnostic.config({ virtual_lines = new_config})
			end, { desc = "display errors as virtual lines" })
		end,
	}
}
