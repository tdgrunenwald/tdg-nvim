-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>e", ":Explore<CR>")
vim.keymap.set("v", "<C-n>", ":norm ")

-- Save a keypress for split window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Fix common typos
vim.keymap.set("n", ":Q", ":q")
vim.keymap.set("n", ":W", ":w")

-- Shortcut to swap to most recent buffer
vim.keymap.set("n", "<leader>bs", ":b#<CR>")

