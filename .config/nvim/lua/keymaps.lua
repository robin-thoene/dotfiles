-- [[ General ]]
vim.keymap.set('n', '<Esc>', '<Cmd>nohlsearch<CR>')
-- Keymaps for interacting with diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- Do not allow arrow keys for navigation, train hjkl!
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
-- Keymaps to navigate between splits.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- [[ Telescope ]]
local telescope_builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>sf', telescope_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sg', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>sb', telescope_builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>sh', telescope_builtin.help_tags, { desc = 'Telescope help tags' })
-- [[ nvim-tree ]]
vim.keymap.set('n', '<C-b>', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
-- [[ vim-doge ]]
vim.keymap.set('n', '<leader>cd', '<cmd>DogeGenerate<CR>', { desc = 'Generate documentation' })
-- [[ nvim-dap + nvim-dap-ui ]]
local dap = require 'dap'
local dapui = require 'dapui'
vim.keymap.set('n', '<F5>', dap.continue, { desc = 'Debug: Start/Continue' })
vim.keymap.set('n', '<F11>', dap.step_into, { desc = 'Debug: Step Into' })
vim.keymap.set('n', '<F10>', dap.step_over, { desc = 'Debug: Step Over' })
vim.keymap.set('n', '<S-F11>', dap.step_out, { desc = 'Debug: Step Out' })
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
vim.keymap.set('n', '<leader>B', function()
  dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
end, { desc = 'Debug: Set Breakpoint' })
vim.keymap.set('n', '<F7>', dapui.toggle, { desc = 'Debug: See last session result.' })
-- [[ neotest ]]
local neotest = require 'neotest'
vim.keymap.set('n', '<leader>tr', neotest.run.run, { desc = 'Run nearest test' })
vim.keymap.set('n', '<leader>td', function()
  neotest.run.run { strategy = 'dap' }
end, { desc = 'Debug nearest test' })
vim.keymap.set('n', '<leader>ta', function()
  neotest.run.run { suite = true }
end, { desc = 'Run all tests' })
vim.keymap.set('n', '<leader>ts', neotest.run.stop, { desc = 'Stop nearest test' })
-- [[ nvim-coverage ]]
local coverage = require 'coverage'
vim.keymap.set('n', '<leader>tcl', function()
  coverage.load { place = true }
end, { desc = 'Show line coverage' })
vim.keymap.set('n', '<leader>tcs', function()
  coverage.load { place = true }
  coverage.summary()
end, { desc = 'Show summary' })
