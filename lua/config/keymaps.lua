local function telescope_builtin()
  return require 'telescope.builtin'
end

vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = '[E]xplorer' })

vim.keymap.set('n', '<leader>bn', '<cmd>BufferLineCycleNext<CR>', { desc = '[B]uffer [N]ext' })
vim.keymap.set('n', '<leader>bp', '<cmd>BufferLineCyclePrev<CR>', { desc = '[B]uffer [P]rev' })
vim.keymap.set('n', '<leader>bd', '<cmd>BufferLineCloseOthers<CR>', { desc = '[B]uffer [D]elete others' })
vim.keymap.set('n', '<leader>bdo', '<cmd>BufferLineCloseOthers<CR>', { desc = '[B]uffer [D]elete [O]thers' })
vim.keymap.set('n', '<leader>bb', '<cmd>BufferLinePick<CR>', { desc = '[B]uffer [P]ick' })
vim.keymap.set('n', '<leader>bll', '<cmd>BufferLineMoveNext<CR>', { desc = '[B]uffer Move [L]eft' })
vim.keymap.set('n', '<leader>bhh', '<cmd>BufferLineMovePrev<CR>', { desc = '[B]uffer Move [H]left' })

vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<CR>', { desc = '[G]it [G]it (Neogit)' })
vim.keymap.set('n', '<leader>gdc', '<cmd>DiffviewOpen<CR>', { desc = '[G]it [D]iff [C]urrent file' })
vim.keymap.set('n', '<leader>gdh', '<cmd>DiffviewFileHistory<CR>', { desc = '[G]it [D]iff [H]istory' })

vim.keymap.set('n', '<leader>sh', function() telescope_builtin().help_tags() end, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', function() telescope_builtin().keymaps() end, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>sf', function() telescope_builtin().find_files() end, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>ss', function() telescope_builtin().builtin() end, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set({ 'n', 'v' }, '<leader>sw', function() telescope_builtin().grep_string() end, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', function() telescope_builtin().live_grep() end, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', function() telescope_builtin().diagnostics() end, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', function() telescope_builtin().resume() end, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>s.', function() telescope_builtin().oldfiles() end, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '<leader>sc', function() telescope_builtin().commands() end, { desc = '[S]earch [C]ommands' })
vim.keymap.set('n', '<leader><leader>', function() telescope_builtin().find_files() end, { desc = '[ ] Find files' })
vim.keymap.set('n', '<leader>fb', function() telescope_builtin().buffers() end, { desc = '[F]iles [B]uffers' })

vim.keymap.set('n', '<leader>/', function()
  telescope_builtin().current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>s/', function()
  telescope_builtin().live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end, { desc = '[S]earch [/] in Open Files' })

vim.keymap.set('n', '<leader>sn', function() telescope_builtin().find_files { cwd = vim.fn.stdpath 'config' } end, { desc = '[S]earch [N]eovim files' })

vim.keymap.set({ 'n', 'x' }, '<leader>cf', function() require('conform').format { async = true } end, { desc = '[C]onform [F]ormat' })

vim.keymap.set('n', '<leader>dt', '<cmd>DapToggleBreakpoint<CR>', { desc = '[D]ebug [T]oggle breakpoint' })
vim.keymap.set('n', '<leader>dc', '<cmd>DapContinue<CR>', { desc = '[D]ebug [C]ontinue' })
vim.keymap.set('n', '<leader>di', '<cmd>DapStepInto<CR>', { desc = '[D]ebug [I]nto' })
vim.keymap.set('n', '<leader>do', '<cmd>DapStepOver<CR>', { desc = '[D]ebug [O]ver' })
vim.keymap.set('n', '<leader>dO', '<cmd>DapStepOut<CR>', { desc = '[D]ebug Out' })

vim.keymap.set('n', '<leader>sr', '<cmd>SpringRun<CR>', { desc = '[S]pring [R]un' })
vim.keymap.set('n', '<leader>st', '<cmd>SpringBootTest<CR>', { desc = '[S]pring [T]est' })
vim.keymap.set('n', '<leader>sg', '<cmd>SpringBootGenerate<CR>', { desc = '[S]pring [G]enerate' })

vim.keymap.set('n', '<leader>rs', '<cmd>lua require("kulala").run()<CR>', { desc = '[R]est [S]end request' })
vim.keymap.set('n', '<leader>ra', '<cmd>lua require("kulala").run_all()<CR>', { desc = '[R]est [A]ll requests' })
vim.keymap.set('n', '<leader>rr', '<cmd>lua require("kulala").replay()<CR>', { desc = '[R]est [R]eplay' })
vim.keymap.set('n', '<leader>rf', '<cmd>lua require("kulala").search()<CR>', { desc = '[R]est [F]ind request' })

vim.keymap.set('n', '<leader>tt', '<cmd>lua require("neotest").run.run()<CR>', { desc = '[T]est [T]run current' })
vim.keymap.set('n', '<leader>tf', '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<CR>', { desc = '[T]est [F]ile' })
vim.keymap.set('n', '<leader>ts', '<cmd>lua require("neotest").summary.toggle()<CR>', { desc = '[T]est [S]ummary' })