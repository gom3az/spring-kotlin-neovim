local gh = require('utils').gh

vim.pack.add { gh 'stevearc/conform.nvim' }
require('conform').setup {
  notify_on_error = true,
  format_on_save = {
    timeout_ms = 2000,
    lsp_format = 'fallback',
  },
  formatters_by_ft = {
    java = { "google-java-format" },
    kotlin = { "ktlint" },
    lua = { "stylua" },
    json = { "prettierd" },
    markdown = { "prettierd" },
    yaml = { "prettierd" },
  },
}