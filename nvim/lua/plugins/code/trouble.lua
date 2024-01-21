return {
	"folke/trouble.nvim",
	event = "LspAttach",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<leader>xx",
			function()
				require("trouble").toggle()
			end,
			desc = "Trouble",
		},
		{
			"<leader>xw",
			function()
				require("trouble").toggle("workspace_diagnostics")
			end,
			desc = "Trouble Workspace",
		},
		{
			"<leader>xd",
			function()
				require("trouble").toggle("document_diagnostics")
			end,
			desc = "Trouble Document",
		},
		{
			"<leader>xq",
			function()
				require("trouble").toggle("quickfix")
			end,
			desc = "Trouble Quickfix ",
		},
		{
			"<leader>xl",
			function()
				require("trouble").toggle("loclist")
			end,
			desc = "Trouble Loclist",
		},
		{
			"<leader>xr",
			function()
				require("trouble").toggle("lsp_references")
			end,
			desc = "Trouble LSP-References ",
		},
	},
	opts = {},
}
