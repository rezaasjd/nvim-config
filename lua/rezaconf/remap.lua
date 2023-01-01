vim.g.mapleader = ","
vim.keymap.set("n", "<leader>m", vim.cmd.Ex)

vim.keymap.set("n", "<C-o>", vim.cmd.NERDTreeToggle)

local options = { noremap = true }
vim.keymap.set("i", "jk", "<Esc>", options)
vim.keymap.set("n", "<C-q>", ":wq<CR>", options)
vim.keymap.set("n", "<C-w>", ":w<CR>", options)
vim.keymap.set("n", "<C-h>", "<C-W>h", options)
vim.keymap.set("n", "<C-l>", "<C-W>l", options)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- greatest remaps ever
vim.keymap.set("n", "<C-e>", "$")
vim.keymap.set("n", "<C-a>", "^")

