return {
    'stevearc/conform.nvim',
    event = 'LspAttach',
    opts = {},
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                c = { 'clang-format' },
                cpp = { 'clang-format' },
                html = { 'prettier' },
                lua = { 'stylua' },
                markdowm = { 'prettier' },
                javascript = { { 'prettier' } },
                json = { 'prettier' },
                python = { 'isort', 'black' },
                typescript = { { 'prettier' } },
                xml = { 'xmlformatter' },
                yaml = { 'prettier' },
            },
            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 500,
                lsp_fallback = true,
            },
        })
    end,
}
