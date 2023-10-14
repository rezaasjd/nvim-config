require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "cpp", "scala", "java", "python", "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  auto_install = true,

  ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
