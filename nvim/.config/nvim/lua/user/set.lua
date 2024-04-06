local set = vim.opt
local gset = vim.g

set.nu = true
set.relativenumber = true

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

set.smartindent = true

set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

set.hlsearch = false
set.incsearch = true

set.signcolumn = "auto"

-- set.termguicolors = true -- ?

set.updatetime = 50 -- ?

gset.mapleader = " "
