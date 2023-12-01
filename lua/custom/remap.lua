vim.g.mapleader = " "
vim.keymap.set("n", "<C-e>", vim.cmd.Ex)
vim.keymap.set("n", "<leader>h", ":noh<CR>")

vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-l>", "<C-w>l")
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-s>", ":split<CR><C-w>j")
vim.keymap.set("n", "<M-d>", ":vsplit<CR><C-w>l")
vim.keymap.set("n", "<M-z>", "<c-w>_ | <c-w>|")
vim.keymap.set("n", "<M-=>", "<C-w>=")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<M-f>", ":term<CR>")
vim.keymap.set("n", "<M-a>c", ":tabnew")
vim.keymap.set("t", "<C-x>", "<C-\\><C-n>")
vim.keymap.set("n", "Q", ":q!<CR>")


vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")
