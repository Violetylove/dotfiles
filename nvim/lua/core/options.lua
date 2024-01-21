local opt = vim.opt

-- 行号
opt.number = true
opt.relativenumber = true

opt.scrolloff = 5
opt.sidescrolloff = 5

-- views can only be fully collapsed with the global statusline
opt.laststatus = 3
-- Default splitting will cause your main splits to jump when opening an edgebar.
-- To prevent this, set `splitkeep` to either `screen` or `topline`.
opt.splitkeep = "screen"

-- 显示空格
opt.listchars:append("space:·")
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false
opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

-- 高亮当前行,列
opt.cursorline = true
-- opt.cursorcolumn = true

-- 启用鼠标
opt.mouse:append("a")
-- 系统剪贴板
opt.clipboard:append("unnamedplus")
-- 默认新窗口位置
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
opt.background = "dark" -- or "light" for light mode

-- 代码块折叠
opt.foldmethod = "indent" -- "marker", "indent"
opt.foldlevel = 99
