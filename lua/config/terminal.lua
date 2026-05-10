local job_id = 0
local current_command = ''

vim.keymap.set('n', '<space>to', function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd('J')
  vim.api.nvim_win_set_height(0, 5)
  job_id = vim.bo.channel
end, { desc = '[T]erminal [O]pen' })

vim.keymap.set('n', '<space>te', function()
  current_command = vim.fn.input 'Command: '
end, { desc = '[T]erminal [E]nter command' })

vim.keymap.set('n', '<space>tr', function()
  if current_command == '' then
    current_command = vim.fn.input 'Command: '
  end
  vim.fn.chansend(job_id, { current_command .. '\r\n' })
end, { desc = '[T]erminal [R]un command' })