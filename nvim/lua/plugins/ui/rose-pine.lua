return {
    'rose-pine/neovim',
    name = 'rose-pine' ,
    lazy = true,
    config = function()
        require("rose-pine").setup({
            disable_italics = true,
        })
    end,
}
