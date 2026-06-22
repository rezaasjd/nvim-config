vim.g.mapleader = ','
vim.keymap.set('n', '<leader>m', vim.cmd.Ex)

local options = { noremap = true }
vim.keymap.set('i', 'jk', '<Esc>', options)
vim.keymap.set('i', '<C-c>', '<Esc>', options)
vim.keymap.set('n', '<C-h>', '<C-W>h', options)
vim.keymap.set('n', '<C-l>', '<C-W>l', options)
vim.keymap.set('n', '<C-j>', '<C-W>j', options)
vim.keymap.set('n', '<C-k>', '<C-W>k', options)

vim.keymap.set('n', '<leader>o', function()
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
vim.keymap.set('v', '<leader>y', '\'+y')
vim.keymap.set('n', '<leader>Y', '\'+Y')

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

vim.keymap.set('n', '<leader>f', '<cmd>slient !tmux neww tmux-sessionizer<CR>')

-- greatest remaps ever
vim.keymap.set('n', '<C-e>', '$')
vim.keymap.set('n', '<C-a>', '^')

-- terminal mode
vim.keymap.set('n', '<C-z>', ':vnew term://tcsh<Enter>')
vim.keymap.set('n', '<C-t>', '<C-z>', options)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { noremap = true })

-- autocomplete from buffer
--vim.keymap.set('i', '<C-f>', '<C-x><C-n>')

vim.keymap.set('n', '<leader>cp', function()
  local path = vim.fn.expand('%:p')
  vim.fn.setreg('+', path)
  vim.notify('Copied: ' .. path)
end)

-- copycat
vim.keymap.set('n', '<leader>y', '"*y')

local function copy_hash()
  local filename = vim.fn.expand("%:p")
  if filename ~= '' then
    local command = 'sha256sum ' .. filename
    local hash_output = vim.fn.system(command)

    -- SHA256sum outputs "hash  filename". We only want the hash.
    local hash = hash_output:match("(%s*)([a-f0-9]+)")

    if hash then
      vim.fn.setreg('+', hash)
      vim.notify('SHA256 copied: ' .. hash)
    else
      vim.notify('Failed to calculate SHA256 for: ' .. filename)
    end
  end
end
vim.keymap.set('n', '<leader>cu', copy_hash)


-- equalize
vim.keymap.set('n', '<leader>=', '<C-w>=')


-- Create a user command called MoveBack that opens the alternate file in the current window
vim.api.nvim_create_user_command('MoveBack', function()
  vim.cmd("edit #")
end, {})
