local gh = require('utils').gh

vim.pack.add { gh 'mistweaverco/kulala.nvim' }
require('kulala').setup { global_keymaps = false }