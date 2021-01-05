local set = vim.o
local api = vim.api
local home = os.getenv("HOME")

vim.g.mapleader = ","

set.hidden          = true
set.secure          = true
set.title           = true
set.lazyredraw      = true
set.splitright      = true
set.modeline        = false
set.ttimeout        = true
set.wildignorecase  = true
set.expandtab       = true
set.shiftround      = true
set.ignorecase      = true
set.smartcase       = true
set.undofile        = true
set.backup          = true
set.magic           = true
set.number          = true
set.tags            = "" -- let gutentags handle this

set.shortmess       = vim.o.shortmess .. 's'
set.undodir         = home .. "/.cache/nvim/undofile"
set.backupdir       = home .. "/.cache/nvim/backup"
set.directory       = home .. "/.cache/nvim/swap"
