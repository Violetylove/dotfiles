return {
	'folke/neodev.nvim',
	event = 'LspAttach',
	opts = {
		library = {
			enabled = true,
			runtime = true,
			types = true, -- full signature, docs and completion of vim.api, vim.treesitter, vim.lsp and others
			plugins = true, -- installed opt or start plugins in packpath
			-- you can also specify the list of plugins to make available as a workspace library
			-- plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
		},
		setup_jsonls = false,
		override = function(root_dir, options) end,
		lspconfig = true,
		pathStrict = true,
	},
	-- 在lspconfig中启动
}
