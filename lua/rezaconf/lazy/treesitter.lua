return {
    'nvim-treesitter/nvim-treesitter', 
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        -- A list of parser names, or "all"
        ensure_installed = { "cpp", "scala", "python", "c", "lua", "rust", "vimdoc" },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,
        auto_install = true,

        highlight = {
          -- `false` will disable the whole extension
          enable = true,

          additional_vim_regex_highlighting = true,
        },
        rainbow = {
          enable = true,
          extended_mode = true,
          max_file_lines = nil
        }
      }
    end
}
