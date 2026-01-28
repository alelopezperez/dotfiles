vim.keymap.set('n', '\\', function() require('oil').toggle_float() end, { desc = 'Open Parent Directory in Oil' })
vim.keymap.set('n', 'gl', function() vim.diagnostic.open_float() end, { desc = 'Open Diagnostic in float' })
vim.keymap.set('i', '<C-w>', '<cmd>w<cr><ESC>', { desc = 'Save/Write in insert mode' })
vim.keymap.set('n', '<C-w>', '<cmd>w<cr>', { desc = 'Save/Write in Normal Mode' })
