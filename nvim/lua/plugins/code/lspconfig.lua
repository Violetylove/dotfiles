return {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    enabled = true,
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
    },
    config = function()
        -- server list
        local servers = {
            -- table值为每个server的设置
            -- clangd = {},
            -- html = {},
            lemminx = {},
            lua_ls = {
                Lua = {
                    workspace = { checkThirdParty = false },
                    telemetry = { enable = false },
                },
            },
            marksman = {},
            tsserver = {},
        }

        -- cmp设置
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require('neodev').setup()
        require('fidget').setup({})
        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = vim.tbl_keys(servers),
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({
                        settings = servers[server_name],
                        capabilities = capabilities,
                    })
                end,
            },
        })

        -- keymap
        local keymap = vim.keymap
        keymap.set('n', '[d', vim.diagnostic.goto_prev)
        keymap.set('n', ']d', vim.diagnostic.goto_next)

        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),

            callback = function(ev)
                local builtin = require('telescope.builtin')
                local con_format = require('conform')
                vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
                keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = 'Goto Definition' })
                keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = ev.buf, desc = 'Goto Implementation' })
                keymap.set('n', 'gr', builtin.lsp_references, { buffer = ev.buf, desc = 'Goto References' })
                keymap.set('n', '<leader>k', vim.lsp.buf.hover, { buffer = ev.buf, desc = 'Hover Doc' })
                keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = ev.buf, desc = 'Rename' })
                keymap.set(
                    { 'n', 'v' },
                    '<leader>ca',
                    vim.lsp.buf.code_action,
                    { buffer = ev.buf, desc = 'Code Action' }
                )
                keymap.set('n', '<leader>cf', function()
                    con_format.format({
                        async = true,
                        -- bufnr = ev.buf,
                    })
                end, { desc = 'Code Formatting' })
            end,
        })
    end,
}
