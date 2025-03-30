-- vim general keymaps
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts)
vim.keymap.set("n", "<C-s>", vim.cmd.w, opts)
vim.keymap.set("n", "<C-q>", vim.cmd.q, opts)

-- tabs
vim.keymap.set("n", "<leader>to", vim.cmd.tabnew, opts)
vim.keymap.set("n", "<leader>tx", vim.cmd.tabclose, opts)
vim.keymap.set("n", "<leader>tn", vim.cmd.tabn, opts)
vim.keymap.set("n", "<leader>tp", vim.cmd.tabp, opts)

-- save file without auto-formatting
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", opts)

-- vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "<C-k>", "<C-e>", opts)
vim.keymap.set("n", "<C-j>", "<C-y>", opts)

-- find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- resize splits with arrows
vim.keymap.set("n", "<Up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize -2<CR>", opts)

-- buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", opts)   -- close buffer
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", opts) -- new buffer

-- window management
vim.keymap.set("n", "<leader>v", "<C-w>v", opts)      -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", opts)      -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", opts)     -- make split equally sized
vim.keymap.set("n", "<leader>xs", ":close<CR>", opts) -- close split

-- navigate between splits
vim.keymap.set("n", "<S-k>", ":wincmd k<CR>", opts) -- up
vim.keymap.set("n", "<S-j>", ":wincmd j<CR>", opts) -- down
vim.keymap.set("n", "<S-h>", ":wincmd h<CR>", opts) -- left
vim.keymap.set("n", "<S-l>", ":wincmd l<CR>", opts) -- right

-- toggle line wraping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts) -- right

-- stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
