-- open filesystem
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- next buffer
vim.keymap.set('n', '<C-B>', ':bnext<CR>')
--vim.keymap.set('n', '<C-X>', ':bdelete<CR>')
vim.keymap.set('n', '<C-X>', ':bp | bd #<CR>', { noremap = true, silent = true })

-- open a terminal
vim.keymap.set('n', '<C-T>', ':term<CR>')

-- window splits
vim.keymap.set('n', '<leader>|', '<C-W>v')
vim.keymap.set('n', '<leader>-', '<C-W>s')

-- window transitions
vim.keymap.set('n', '<C-H>', '<C-W>h')
vim.keymap.set('n', '<C-J>', '<C-W>j')
vim.keymap.set('n', '<C-K>', '<C-W>k')
vim.keymap.set('n', '<C-L>', '<C-W>l')

-- dap
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F8>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F9>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input 'Log point message: ') end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function() require('dap.ui.widgets').hover() end)
vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function() require('dap.ui.widgets').preview() end)
vim.keymap.set('n', '<Leader>df', function()
  local widgets = require 'dap.ui.widgets'
  widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
  local widgets = require 'dap.ui.widgets'
  widgets.centered_float(widgets.scopes)
end)

-- oil
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
