require('telescope').setup({
  defaults = {
    layout_strategy = 'bottom_pane',
    layout_config = {
      anchor = "S",
      vertical = { width = 0.4, height = 0.9 }
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
  -- other configuration values here
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<C-s>', function()
	builtin.grep_string( { search = vim.fn.input("Grep > ") });
end)
