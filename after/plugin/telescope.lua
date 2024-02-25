local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ["<C-f>"] = actions.close,
        ["<C-m>"] = actions.close,
        ["<C-s>"] = actions.close,
        ["<C-u>"] = false,
      },
      n = {
        ["<C-f>"] = actions.close,
        ["<C-s>"] = actions.close,
        ["<C-m>"] = actions.close,
      }
    },
    layout_strategy = 'bottom_pane',
  },
  pickers = {
    find_files = {
      find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
      --find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
    },
  },
})
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-s>', builtin.live_grep, {})
vim.keymap.set('n', '<C-m>', builtin.help_tags, {})
vim.keymap.set('n', '<CR>', function() 
  vim.api.nvim_feedkeys("<CR>", 'x', false)
end)
