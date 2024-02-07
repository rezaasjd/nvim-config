local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ["<C-f>"] = actions.close,
        ["<C-u>"] = false,
      },
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
