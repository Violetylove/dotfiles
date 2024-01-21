return {
    'akinsho/toggleterm.nvim',
    version = "*", 
    lazy = true,
    keys = {
        { "<leader>ps", "<cmd>lua pwsh_toggle()<CR>", desc = "Power Shell" },
        { "<leader>lg", "<cmd>lua lazygit_toggle()<CR>", desc = "Lazygit" },
    },
    config = function()
        local Terminal  = require('toggleterm.terminal').Terminal

        local pwsh = Terminal:new({ 
            cmd = "pwsh -nologo",
            hidden = true,
            direction = "float",
        })
        local lazygit = Terminal:new({ 
            cmd = "lazygit",
            hidden = true,
            direction = "float",
        })
        function pwsh_toggle()
            pwsh:toggle()
        end
        function lazygit_toggle()
            lazygit:toggle()
        end
    end,
}
