return {
    "nvim-lualine/lualine.nvim",
	event = { "BufReadPre", "BufNewFile" },
    dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true },
    config = true
}
