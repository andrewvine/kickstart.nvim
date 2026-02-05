-- open filesystem
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- next buffer
vim.keymap.set('n', '<C-B>', ':bnext<CR>')
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>')
vim.keymap.set('n', '<leader>|', '<C-W>v')
vim.keymap.set('n', '<leader>-', '<C-W>s')

-- window transitions
vim.keymap.set('n', '<C-H>', '<C-W>h')
vim.keymap.set('n', '<C-J>', '<C-W>j')
vim.keymap.set('n', '<C-K>', '<C-W>k')
vim.keymap.set('n', '<C-L>', '<C-W>l')
