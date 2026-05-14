local gh = require('utils').gh
vim.pack.add { gh 'nvimdev/dashboard-nvim', gh 'nvim-tree/nvim-web-devicons' }

vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  nested = true,
  callback = function()
    if vim.fn.argc() == 0 then
      require('dashboard').setup {
        theme = 'hyper',
        config = {
          shortcut = {
            { desc = 'Find Files', key = 'f', action = 'Telescope find_files' },
          },
        },
      }
    end
  end,
})