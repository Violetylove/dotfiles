return {
	"akinsho/toggleterm.nvim",
	version = "*",
	lazy = true,
	keys = {
		{ "<leader>lg", "<cmd>lua LazygitToggle()<CR>", desc = "Lazygit" },
		{ "<leader>ps", "<cmd>lua PwshToggle()<CR>", desc = "Power Shell" },
		{ "<leader>zs", "<cmd>lua ZshToggle()<CR>", desc = "Zsh" },
	},
	config = function()
		local Terminal = require("toggleterm.terminal").Terminal

		-- direction = 'vertical' | 'horizontal' | 'tab' | 'float'
		function PwshToggle()
			Terminal:new({
				cmd = "pwsh -nologo",
				hidden = true,
				direction = "tab",
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
				direction = "tab",
			}):toggle()
		end
	end,
}
