-- lua/config/plugins/mini.lua
return {
	{
		'echasnovski/mini.nvim',
		config = function()
			local icons = require 'mini.icons'
			local git = require 'mini.git'
			local diff = require 'mini.diff'
			local completion = require 'mini.completion'
			local statusline = require 'mini.statusline'
			local hipatterns = require('mini.hipatterns')
			local ai = require 'mini.ai'
			icons.setup {}
			git.setup {}
			diff.setup {}
			completion.setup {}
			statusline.setup { use_icons = true }
			hipatterns.setup({
				highlighters = {
					fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
					hack	= { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
					todo	= { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
					note	= { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },
					file	= { pattern = '%f[%w]()FILE()%f[%W]',  group = 'MiniHipatternsNote'  },
					-- Highlight hex color strings (`#rrggbb`) using that color
					hex_color = hipatterns.gen_highlighter.hex_color(),
				},
			})
			ai.setup {}
		end
	}
}
