return {
	"echasnovski/mini.nvim",
	event = { "BufReadPost", "BufNewFile" },
	version = false,
	config = function()
		require("mini.pairs").setup()
		require("mini.comment").setup()
		require("mini.surround").setup()
		-- require('mini.indentscope').setup()
	end,
}
