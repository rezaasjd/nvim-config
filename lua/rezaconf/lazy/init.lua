return {
  {
    'nvim-lua/plenary.nvim',
    tag = 'v0.1.4',
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
      vim.keymap.set('n', '<leader>gp', ":tab Git push <CR>")
      vim.keymap.set('n', '<leader>gl', ":tab Git log<CR>")
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

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
      require("ibl").setup()
    end
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
}
