return {
    'akinsho/bufferline.nvim',
    version = "*", 
	event = { "BufReadPre", "BufNewFile" },
    dependencies = {'nvim-tree/nvim-web-devicons', lazy = true},
    config = function()
        require("bufferline").setup {
            options = {
                -- 使用 nvim 内置lsp
                diagnostics = "nvim_lsp",
                -- 左侧让出 nvim-tree 的位置
                offsets = {{
                    filetype = "NvimTree",
                    text = "Atovio File",
                    highlight = "Directory",
                    text_align = "left"
                }}
            }
        }
    end,
}
