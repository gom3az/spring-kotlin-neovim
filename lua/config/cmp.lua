local gh = require('utils').gh

vim.pack.add { gh 'hrsh7th/nvim-cmp' }
vim.pack.add { gh 'hrsh7th/cmp-nvim-lsp' }
vim.pack.add { gh 'hrsh7th/cmp-path' }

local cmp = require 'cmp'

cmp.setup {
  mapping = cmp.mapping.preset.insert {
    ['<C-y>'] = cmp.config.disable,
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm { select = true },
    ['<S-tab>'] = cmp.mapping.select_prev_item(),
    ['<tab>'] = cmp.mapping.select_next_item(),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'path' },
  }),
}