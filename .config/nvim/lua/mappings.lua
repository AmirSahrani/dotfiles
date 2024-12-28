vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open Parent Directory' })

vim.keymap.set('n', '<leader>x', '<CMD>BufferClose<CR>', { desc = 'Open Parent Directory' })
vim.keymap.set('n', '<Tab>', '<CMD>BufferNext<CR>', { desc = 'Open Parent Directory' })
vim.keymap.set('n', '<S-Tab>', '<CMD>BufferPrevious<CR>', { desc = 'Open Parent Directory' })
vim.keymap.set('v', '<leader>/', '<Plug>(comment_toggle_blockwise_visual)', { desc = 'Block Comment' })
vim.keymap.set('n', '<leader>/', '<Plug>(comment_toggle_linewise_current)', { desc = 'Line Comment' })
vim.keymap.set('n', '<leader>ww', '<CMD>set linebreak<CR>', { desc = 'Line Comment' })
