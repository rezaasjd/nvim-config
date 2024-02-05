local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.extend_lspconfig()

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select), 
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select), 
    ['<C-o>'] = cmp.mapping.confirm({ select = true }), 
    ['<C-y>'] = cmp.mapping.complete(),
  })
})

lsp.setup_servers({'rust_analyzer', 'clangd'})


lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
