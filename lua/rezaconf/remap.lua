vim.g.mapleader = ','
vim.keymap.set('n', '<leader>m', vim.cmd.Ex)

local options = { noremap = true }
vim.keymap.set('i', 'jk', '<Esc>', options)
vim.keymap.set('i', '<C-c>', '<Esc>', options)
vim.keymap.set('n', '<C-q>', ':wq<CR>', options)
vim.keymap.set('n', '<C-h>', '<C-W>h', options)
vim.keymap.set('n', '<C-l>', '<C-W>l', options)
vim.keymap.set('n', '<C-j>', '<C-W>j', options)
vim.keymap.set('n', '<C-k>', '<C-W>k', options)

vim.keymap.set('n', '<C-o>', function()
  local oil = require("oil")
  oil.toggle_float()
end)

vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv")

vim.keymap.set('x', '<leader>p', '\'_dP')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>y', '\'+y')
vim.keymap.set('n', '<leader>y', '\'+y')
vim.keymap.set('v', '<leader>y', '\'+y')
vim.keymap.set('n', '<leader>Y', '\'+Y')

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

vim.keymap.set('n', '<leader>f', '<cmd>slient !tmux neww tmux-sessionizer<CR>')

-- greatest remaps ever
vim.keymap.set('n', '<C-e>', '$')
vim.keymap.set('n', '<C-a>', '^')
vim.keymap.set('n', '<C-i>', '<C-w><C-f>')

-- terminal mode
vim.keymap.set('n', '<C-z>', ':vnew term://tcsh<Enter>')
vim.keymap.set('n', '<C-t>', '<C-z>', options)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { noremap = true })

-- autocomplete from buffer
vim.keymap.set('i', '<C-f>', '<C-x><C-n>')


-- copycat
vim.keymap.set('n', '<leader>y', '"*y')
vim.keymap.set('n', '<leader>p', '"*p')

-- equalize
vim.keymap.set('n', '<leader>=', '<C-w>=')

-- turn off relative number
vim.keymap.set('n', '<leader>crn', function()
  vim.opt.relativenumber = false
end)

-- turn back on relative number
vim.keymap.set('n', '<leader>trn', function()
  vim.opt.relativenumber = true
end)

-- delete file
local function confirm_and_delete_buffer()
  local confirm = vim.fn.confirm("Delete buffer and file?", "&Yes\n&No", 2)
  if confirm == 1 then
    os.remove(vim.fn.expand "%")
    vim.api.nvim_buf_delete(0, { force = true })
  end
end
vim.keymap.set('n', '<leader>d', confirm_and_delete_buffer)

-- Lua function to delete all lines in the current buffer
local function clear_buffer()
  local confirm = vim.fn.confirm("Clear buffer lines?", "&Yes\n&No", 2)
  if confirm == 1 then
    vim.api.nvim_buf_set_lines(0, 0, -1, false, {})
    vim.cmd('write')
  end
end

-- Map <leader>c to the clear_buffer function
vim.keymap.set('n', '<leader>c', clear_buffer, { noremap = true, silent = true })
