return {
    "williamboman/mason-lspconfig.nvim",
	event = { "BufReadPre", "BufNewFile" },
    dependencies = { "williamboman/mason.nvim" },
    -- 由于mason,mason-lspconfig,lspconfig有严格的启动顺序
    -- 所以，mason-lspconfig的启动设置在lspconfig中了
}
