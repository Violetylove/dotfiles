return {
	"stevearc/aerial.nvim",
	opts = {
		layout = {
			width = 30,
		},
	},
	keys = {
		{ "<leader>ol", "<cmd>AerialToggle!<CR>", desc = "Code Outline" },
	},
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}
