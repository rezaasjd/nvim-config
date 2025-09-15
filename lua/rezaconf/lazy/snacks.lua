return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = {'nvim-lua/plenary.nvim'},
  config = function()
    local actions = require('telescope.actions')
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-f>', builtin.find_files, {})
    vim.keymap.set('n', '<C-s>', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>f', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ss', function()
      local w = vim.fn.expand('<cword>')
      builtin.grep_string({ search = w })
    end)

    vim.keymap.set('n', '<leader>ps', function()
      local w = vim.fn.expand('<cWORD>')
      builtin.grep_string({ search = w })
    end)
    require('telescope').setup({
      defaults = {
        file_ignore_patterns = { "%.o$", "%.a$", "%.so$", "%.exe$", "%.dll$", "%.bin$", "%.dat$", "%.class$", "%.out$", "%.pdf$", "%.zip$", "%.tar$", "%.gz$" },
        mappings = {
          i = {
            ['<C-f>'] = actions.close,
            ['<C-u>'] = false,
          },
          n = {
            ['<C-f>'] = actions.close,
          }
        },
        layout_strategy = 'bottom_pane',
      },
      pickers = {
        git_files = {
          disable_devicons = true,
        },
        live_grep = {
          disable_devicons = true,
        },
        grep_string = {
          disable_devicons = true,
        },
        find_files = {
          disable_devicons = true,
          find_command = { 'fd', '--type', 'f', '--strip-cwd-prefix', "--exclude", "*.o",
          "--exclude", "*.so", "--exclude", "*.bin", "--exclude", "*.exe", "--exclude", "*.pdf" ,
          "--exclude", "*.xz", "--exclude", "*.zip", "--exclude", "*.tar", "--exclude", "*.gz", "-j", "2"},
        },
      },
    })
  end
}
