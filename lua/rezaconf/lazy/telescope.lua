return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = {'nvim-lua/plenary.nvim'},
  config = function()
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-f>', builtin.find_files, {})
    vim.keymap.set('n', '<C-s>', builtin.live_grep, {})

    require('telescope').setup({
      defaults = {
        mappings = {
          i = {
            ["<C-f>"] = actions.close,
            ["<C-u>"] = false,
          },
          n = {
            ["<C-f>"] = actions.close,
          }
        },
        layout_strategy = 'bottom_pane',
      },
      pickers = {
        find_files = {
          disable_devicons = true,
          find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
          --find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
      },
    })
  end
}

