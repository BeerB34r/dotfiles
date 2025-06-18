return {
	{
		"rafamadriz/friendly-snippets",
	},
	{
		"saghen/blink.cmp",
		dependencies = {
			{ "rafamadriz/friendly-snippets", },
			{
				"L3MON4D3/luasnip",
				build = "make install_jsregexp",
				config = function()
					require("luasnip.loaders.from_vscode").lazy_load()
					require("luasnip.loaders.from_lua").lazy_load({ paths = "./lua/snippets"})
				end
			},
		},
		version = '1.*',

		---@module "blink.cmp"
		---@type blink.cmp.config
		opts = {
			snippets = { preset = 'luasnip' },
			keymap = {
				preset = 'default',
			},
			appearance = {
				nerd_font_variant = 'mono',
			},
			completion = { documentation = { auto_show = false } },
			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { 'sources.default' }
	},
}
