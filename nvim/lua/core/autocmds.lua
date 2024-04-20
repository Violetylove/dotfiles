vim.api.nvim_create_autocmd('TextYankPost', {
    callback=function ()
        vim.highlight.on_yank({
            higruop = 'IncSearch',
            timeout = 300
        })
    end
})
