return {
	"williamboman/mason.nvim",
	build = ":MasonUpdate" ,
	event = "VeryLazy",
	keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    -- 由于mason,mason-lspconfig,lspconfig有严格的启动顺序
    -- 所以，mason的启动设置在lspconfig中了
}
