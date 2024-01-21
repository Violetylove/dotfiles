-- this plugin is replaced with dropbar.nvim,which is more poweful.
-- But the dropbar.nvim only for nvim v.0.10
-- if true then
-- 	return {}
-- end

return {
	"utilyre/barbecue.nvim",
	name = "barbecue",
	event = { "BufReadPre", "BufNewFile" },
	enabled = false,
	version = "*",
	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons", -- optional dependency
	},
	opts = {
		-- configurations go here
	},
}
