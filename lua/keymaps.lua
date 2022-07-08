local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
map('i', "jj", '<Esc>', {noremap = true})
map('n', '<C-p>', '"0p', {noremap = true})
-- auto format
map('n', '<C-s>', ':Autoformat<CR>:w<CR>',  default_opts)
map('i', '<C-s>', '<esc>:Autoformat<CR>:w<CR>', default_opts)
-- tab switching
map('n', '<Tab>', ':BufferLineCycleNext<CR>', default_opts)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', default_opts)
-- Пролистнуть на страницу вниз / вверх (как в браузерах)
map('n', '<Space>', '<PageDown> zz', default_opts)
map('n', '<C-Space>', '<PageUp> zz', default_opts)
map('n', 't', ':NvimTreeRefresh<CR>:NvimTreeToggle<CR>', default_opts)
