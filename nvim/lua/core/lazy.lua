local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath,
    })
end
-- vim.opt.rtp:prepend(vim.env.LAZY or lazypath)
vim.opt.rtp:prepend(lazypath)
vim.keymap.set('n', '<leader>lz', '<cmd>Lazy<cr>', { desc = 'Lazy' })

require('lazy').setup({
    spec = {
        { import = 'plugins.ui' },
        { import = 'plugins.tools' },
        { import = 'plugins.code' },
    },
    install = {
        colorscheme = { 'tokyonight-storm' },
    },
    defaults = {
        lazy = false,
        version = '*', -- "*" 是稳定版，false 是最新版
    },
    git = {
        -- 使用SSH安装插件
        -- url_format = 'git@github.com:%s.git',
        -- 使用HTTPS安装插件
        url_format = 'https://github.com/%s.git',
    },
    performance = {
        rtp = {},
    },
})
