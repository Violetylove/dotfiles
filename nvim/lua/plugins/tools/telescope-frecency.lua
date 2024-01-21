return {
	"nvim-telescope/telescope-frecency.nvim",
	event = "VeryLazy",
	keys = {
		{ "<leader>fc", "<Cmd>Telescope frecency<CR>", desc = "Telescope Frecency" },
	},
	config = function()
		require("telescope").load_extension("frecency")
	end,
}
