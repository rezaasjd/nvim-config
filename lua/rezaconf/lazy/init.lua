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
      vim.keymap.set('n', '<leader>g', vim.cmd.Git);
    end
  },

  {
    'folke/zen-mode.nvim',
    config = function()
      require('zen-mode').setup{
        window = {
          width = 130,
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

  'preservim/nerdtree',
  'mg979/vim-visual-multi',

  'folke/tokyonight.nvim',
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  },

}
