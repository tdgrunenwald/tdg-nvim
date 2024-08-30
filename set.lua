vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.tabstop = 5
vim.opt.shiftwidth = 0

vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "120"
vim.opt.textwidth = 120

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_preview = 1
