-- global/buffer/windows-scoped options
local opt = vim.opt
local cmd = vim.cmd
-- opt.colorcolumn = '80'
opt.cursorline = true
opt.spelllang= {'en_us', 'ru'}
opt.number = true
opt.relativenumber = true
opt.so=999
opt.undofile = true
opt.splitright = true
opt.splitbelow = true
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.termguicolors = true
cmd("colorscheme onedark")
