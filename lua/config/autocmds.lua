vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  nested = true,
  callback = function()
    -- Only show dashboard if no file was opened (no args)
    if vim.fn.argc() == 0 then
      vim.cmd.packadd 'dashboard-nvim'
      require('dashboard').setup {
        theme = 'hyper',  -- or 'doom'
        config = {
          shortcut = {
            { desc = 'Find Files', key = 'f', action = 'Telescope find_files' },
            -- etc
          },
          -- mru, project, etc
        },
      }
    end
  end,
})
