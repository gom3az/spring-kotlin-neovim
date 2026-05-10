local gh = require('utils').gh

vim.pack.add { gh 'nvim-neotest/neotest' }
vim.pack.add { gh 'nvim-neotest/nvim-nio' }
vim.pack.add { gh 'mfussenegger/nvim-lint' }

require('neotest').setup {
  adapters = {},
}

require('lint').linters_by_ft = {}