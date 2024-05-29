-- But the dropbar.nvim only for nvim v.0.10
if true then
	return {}
end

return {
	"Bekaboo/dropbar.nvim",
	event = {
		"OptionSet",
		"BufWinEnter",
		"BufWritePost",
	},
	-- enable = false,
	config = true,
	-- optional, but required for fuzzy finder support
	-- dependencies = {
	-- 	"nvim-telescope/telescope-fzf-native.nvim",
	-- },
}
