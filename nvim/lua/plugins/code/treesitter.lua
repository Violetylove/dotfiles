return {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre', 'BufNewFile' },
    -- enabled = false,
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    config = function()
        require('nvim-treesitter.configs').setup({
            auto_install = true,
            ensure_installed = {
                'c',
                'cpp',
                'lua',
                'markdown',
                'python',
                'html',
                'javascript',
                'css',
            },
            highlight = { enable = true },
            indent = {
                enable = true,
            },
            sync_install = false,
        })
    end,
}
