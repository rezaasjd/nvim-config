return {
  'ThePrimeagen/harpoon',
  config = function()
    local mark = require('harpoon.mark')
    local ui = require('harpoon.ui')
    local tmux = require('harpoon.tmux')
    vim.keymap.set('n', '<leader>a', mark.add_file)
    vim.keymap.set('n', '<leader>m', ui.toggle_quick_menu)
    vim.keymap.set('n', '<leader>b', ui.nav_prev)
    vim.keymap.set('n', '<leader>n', ui.nav_next)
    vim.keymap.set('n', '<C-t>', function()
        tmux.gotoTerminal(0)
    end)
  end
}
