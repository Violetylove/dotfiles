return {
    'akinsho/toggleterm.nvim',
    version = "*",
    lazy = true,
    keys = {
        { "<leader>lg", "<cmd>lua LazygitToggle()<CR>", desc = "Lazygit" },
        { "<leader>ps", "<cmd>lua PwshToggle()<CR>",    desc = "Power Shell" },
        { "<leader>zs", "<cmd>lua ZshToggle()<CR>",     desc = "Zs" },
    },
    config = function()
        local Terminal = require('toggleterm.terminal').Terminal

        -- local pwsh     = Terminal:new({
        --     cmd = "pwsh -nologo",
        --     hidden = true,
        --     direction = "float",
        -- })
        -- local lazygit  = Terminal:new({
        --     cmd = "lazygit",
        --     hidden = true,
        --     direction = "float",
        -- })
        function PwshToggle()
            Terminal:new({
                cmd = "pwsh -nologo",
                hidden = true,
                direction = "float",
            }):toggle()
        end

        function LazygitToggle()
            Terminal:new({
                cmd = "lazygit",
                hidden = true,
                direction = "float",
            }):toggle()
        end

        function ZshToggle()
            Terminal:new({
                cmd = "zsh",
                hidden = true,
                direction = "float",
            }):toggle()
        end
    end,
}
