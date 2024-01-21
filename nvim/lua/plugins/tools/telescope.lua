return {
	"nvim-telescope/telescope.nvim",
	-- event = "BufEnter",
	event = "VeryLazy",
	tag = "0.1.2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = " Find Files" },
		{ "<leader>fb", "<cmd>Telescope buffers<CR>", desc = " Find Buffer" },
		{ "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Find Help Tags" },
		{ "<leader>fo", "<cmd>Telescope oldfiles<CR>", desc = " Find Hitstory Files" },
	},
	config = function()
		require("telescope").setup({})
	end,
}
