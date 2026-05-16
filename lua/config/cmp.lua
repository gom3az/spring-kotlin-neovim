local gh = require("utils").gh

vim.pack.add({ { src = gh("L3MON4D3/LuaSnip"), version = vim.version.range("2.*") } })
require("luasnip").setup({})

vim.pack.add({ gh("rafamadriz/friendly-snippets") })
require("luasnip.loaders.from_vscode").lazy_load()

vim.pack.add({ gh("saghen/blink.lib"), gh("saghen/blink.cmp") })
require("blink.cmp").setup {
  keymap = { preset = 'enter' },
  completion = { documentation = { auto_show = true, auto_show_delay_ms = 500 } },
  fuzzy = { implementation = 'lua' },
}
