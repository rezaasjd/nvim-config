return {
  {
    'nvim-lua/plenary.nvim',
    name = 'plenary'
  },

  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end
  },

  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>g', ":tab G<CR>");
    end
  },

  {
    'folke/zen-mode.nvim',
    config = function()
      require('zen-mode').setup{
        window = {
          width = 200,
          options = {
            number = true,
            relativenumber = true,
          }
        }
      }
      vim.keymap.set('n', '<leader>z', function()
        require('zen-mode').toggle()
        vim.wo.wrap = false
      end)
    end
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true
  },

  'j-hui/fidget.nvim',

  'mg979/vim-visual-multi',

  'folke/tokyonight.nvim',
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      vim.cmd('colorscheme tokyonight-moon')
    end
  },

}
