return {
	'nvim-tree/nvim-tree.lua',
	version = '*',
	lazy = true,
	dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true },
	keys = {
		{ '<leader>e', '<cmd>NvimTreeToggle<CR>', desc = 'NvimTree' },
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		require('nvim-tree').setup()
	end,
}
