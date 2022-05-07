-- <leader> == <space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)
map("n", "<c-j>", "8j", opt)
map("n", "<c-k>", "8k", opt)
map("n", "<c-h>", "8h", opt)
map("n", "<c-l>", "8l", opt)
-- 分屏
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前分屏 
map("n", "sc", "<c-w>c", opt)
-- 关闭其他分屏
map("n", "so", "<c-w>o", opt)
-- unmap s
map("n", "s", "", opt)
-- 比例控制（不常用，因为支持鼠标拖拽）
map("n", "s,", ":vertical resize +20<CR>", opt)
map("n", "s.", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>",opt)
map("n", "sk", ":resize -10<CR>",opt)

-- 使用 alt + hjkl 在窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)


-- nvimTree
map('n', '<A-m>', ':NvimTreeToggle<CR>', opt)

-- bufferline 左右Tab切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

map("n", "<S-q>", ":q<CR>", opt)

-- toggleterm
map("n", "<C-t>", "<cmd>exe v:count1 . 'ToggleTerm'<CR>", opt)
map("t", "<C-t>", "<ESC><cmd>exe v:count1 . 'ToggleTerm'<CR>", opt)

