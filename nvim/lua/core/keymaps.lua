vim.g.mapleader = " "
local keymap = vim.keymap

----------- Insert ------------
keymap.set("i", "jk", "<Esc>", { desc = "Normal" })

----------- Visual ------------
keymap.set("v", ";", "$")
-- 选中行移动
keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")

----------- Normal ------------
keymap.set("n", ";", "$")
-- 选中所有
keymap.set("n", "<C-a>", "ggVG", { desc = "Selcet All" })
-- 只粘贴复制的内容
keymap.set({ "n", "x" }, "<leader>ap", '"0p', { desc = "Paste Yanked" })
-- 窗口分割
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Vertical Split" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Horizon Split" })
-- 取消高亮
keymap.set("n", "<leader>nl", "<cmd>nohl<CR>", { desc = "Cancel HL" })
-- 保存，退出
keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
keymap.set("n", "<leader>aq", "<cmd>qa<CR>", { desc = "Quit All" })
-- 切换buffer
keymap.set("n", "L", "<cmd>bnext<CR>", { desc = "Next Buffer" })
keymap.set("n", "H", "<cmd>bprevious<CR>", { desc = "Previous Buffer" })
--
keymap.set("n", "j", [[v:count ? "j" : "gj"]], { noremap = true, expr = true })
keymap.set("n", "k", [[v:count ? "k" : "gk"]], { noremap = true, expr = true })
