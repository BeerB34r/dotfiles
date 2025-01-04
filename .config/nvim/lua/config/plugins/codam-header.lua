return {
	"f-ras/codam-header.nvim",
	cmd = { "Stdheader" },
	keys = { "<F1>" },
	opts = {
		default_map = true,
		auto_update = true,
		user = "mde-beer",
		mail = "mde-beer@student.codam.nl"
	},
	config = function (_, opts)
		require("codamheader").setup(opts)
	end,
}
