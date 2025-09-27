return {
  'jacobsimpson/nvim-mercurial',
  config = function()
      vim.keymap.set('n', '<leader>h', ':Hstatus<CR>', { noremap = true, silent = true, desc = "Open Mercurial status" })
  end,
}
