local gh = require('utils').gh

vim.pack.add { gh 'nickjvandyke/opencode.nvim' }

vim.g.opencode_opts = {}

vim.keymap.set({ 'n', 'x' }, '<leader>oa', function()
  local selection = vim.fn.getregion(vim.fn.getpos('v'), vim.fn.getpos('.'), { type = vim.fn.visualmode() })
  local text = table.concat(selection, '\n')
  require('opencode').ask(text .. ': ', { submit = true })
end, { desc = '[O]pencode [A]sk' })

vim.keymap.set({ 'n', 'x' }, '<leader>os', function() require("opencode").select() end, { desc = '[O]pencode [S]elect' })
vim.keymap.set({ 'n', 't' }, '<leader>ot', function() require("opencode").toggle() end, { desc = '[O]pencode [T]oggle' })
vim.keymap.set({ 'n', 'x' }, '<leader>od', function() require("opencode").prompt("Review the following git diff for correctness and readability: @diff") end, { desc = '[O]pencode [D]iff' })
vim.keymap.set({ 'n', 'x' }, '<leader>of', function() require("opencode").prompt("Fix @diagnostics") end, { desc = '[O]pencode [F]ix diagnostics' })