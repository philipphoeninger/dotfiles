-- global vim options
vim.wo.number = true
vim.o.relativenumber = true
vim.o.clipboard = "unnamedplus"
vim.o.wrap = false
vim.o.linebreak = true
vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.backspace = "indent,eol,start"
vim.o.fileencoding = "utf-8"
vim.o.scrolloff = 4
vim.o.sidescrolloff = 8
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.showtabline = 2
vim.o.pumheight = 10
vim.o.conceallevel = 0
-- vim.o.updatetime = 250
-- vim.o.timeoutlen = 300
-- vim.o.backup = false
vim.o.undofile = true
-- vim.o.completeopt = "menuone,noselect"
require("philipp.lazy")
require("telescope")
require("philipp.remap")
print("philipp lua init")

