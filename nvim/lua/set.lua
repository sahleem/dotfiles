local set = vim.opt
local gset = vim.g

set.nu = true
set.relativenumber = true

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

set.smartindent = true

set.list = true
set.listchars:append({
    space = "·",
    eol = "¬"
})

set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

set.hlsearch = false
set.incsearch = true

set.signcolumn = "no"

set.termguicolors = true

set.updatetime = 50 -- ?

set.backspace = "indent,start,eol"

gset.mapleader = " "
