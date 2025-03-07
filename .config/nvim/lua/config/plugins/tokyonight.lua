return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "moon",
    transparent = true,
    styles = {
      functions = {}
    },
    on_colors = function(colors)
      colors.hint = colors.orange
      colors.error = "#ff0000"
    end,
		on_highlights = function(hl)
			hl.LineNrAbove = hl.Statement
			hl.LineNrBelow = hl.Statement
		end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme "tokyonight"
  end
}

