-- markdowm 预览
return {
	-- install with yarn or npm
	'iamcco/markdown-preview.nvim',
	cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
	event = 'BufReadPost',
	keys = {
		{
			'<leader>mt',
			'<cmd>MarkdownPreviewToggle<cr>',
			desc = 'M-k-dPreview Toggle',
		},
		{ '<leader>mr', '<cmd>MarkdownPreview<cr>', desc = 'M-k-dPreview' },
		{
			'<leader>ms',
			'<cmd>MarkdownPreviewStop<cr>',
			desc = 'M-k-dPreview Stop',
		},
	},
	build = 'cd app && npm install',
	init = function()
		vim.g.mkdp_filetypes = { 'markdown' }
	end,
	ft = { 'markdown' },
}
