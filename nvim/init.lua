vim.wo.number=true

-- set leader (leader == prefix for custom shortcuts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- set shortcut for :wa and :q
-- params: 'n' == normal, 'i' would be insert
vim.keymap.set("n", "<leader>q", ":wq<CR>")

--jump to last position when reopening a file
vim.api.nvim_command([[au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif"]])

--set indentation with 4 space chars
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

--continue adding to current indentation
vim.o.smartindent = true

--save undo history
vim.opt.undofile = true

--use system clipboard
vim.o.clipboard = 'unnamedplus'
