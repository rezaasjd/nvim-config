return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  -- The main branch does not support lazy-loading.
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local ts = require('nvim-treesitter')
    ts.setup()

    -- Parsers to keep installed. On the main branch these live under
    -- stdpath('data')/site (prepended to runtimepath), not in the plugin dir.
    ts.install({
      'cpp', 'python', 'c', 'lua', 'rust', 'vimdoc', 'odin',
      'markdown', 'markdown_inline',
    })

    -- Highlighting is NOT auto-enabled on the main branch; turn it on per
    -- filetype via vim.treesitter.start (see :h treesitter-highlight).
    -- pcall guards the first launch before a parser has finished installing.
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'cpp', 'python', 'c', 'lua', 'rust', 'help', 'odin', 'markdown' },
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
