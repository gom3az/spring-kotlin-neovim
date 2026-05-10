local gh = require('utils').gh

local telescope_plugins = {
  gh 'nvim-lua/plenary.nvim',
  gh 'nvim-telescope/telescope.nvim',
  gh 'nvim-telescope/telescope-ui-select.nvim',
}
if vim.fn.executable 'make' == 1 then
  table.insert(telescope_plugins, gh 'nvim-telescope/telescope-fzf-native.nvim')
end

vim.pack.add(telescope_plugins)

require('telescope').setup {
  extensions = {
    ['ui-select'] = { require('telescope.themes').get_dropdown() },
  },
}

pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'ui-select')

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('telescope-lsp-attach', { clear = true }),
  callback = function(event)
    local buf = event.buf
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', 'grr', builtin.lsp_references, { buffer = buf, desc = '[G]oto [R]eferences' })
    vim.keymap.set('n', 'gri', builtin.lsp_implementations, { buffer = buf, desc = '[G]oto [I]mplementation' })
    vim.keymap.set('n', 'grd', builtin.lsp_definitions, { buffer = buf, desc = '[G]oto [D]efinition' })
    vim.keymap.set('n', 'gO', builtin.lsp_document_symbols, { buffer = buf, desc = 'Open Document Symbols' })
    vim.keymap.set('n', 'gW', builtin.lsp_dynamic_workspace_symbols, { buffer = buf, desc = 'Open Workspace Symbols' })
    vim.keymap.set('n', 'grt', builtin.lsp_type_definitions, { buffer = buf, desc = '[G]oto [T]ype Definition' })
  end,
})