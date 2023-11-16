-- vim.opt.guicursor = ""

-- Enable line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Make tabs as wide as four spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.errorbells = false

-- Show the cursor position
vim.opt.ruler = true

-- Enable mouse in all modes
vim.opt.mouse = "a"

-- " Use the OS clipboard by default (on versions compiled with `+clipboard`)
vim.opt.clipboard = "unnamed"

-- Enhance command-line completion
vim.opt.wildmenu = true

-- Highlight searches
vim.opt.hlsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

vim.g.mapleader = " "

vim.o.termguicolors = true
