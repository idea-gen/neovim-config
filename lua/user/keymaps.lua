local map = vim.api.nvim_set_keymap

map('i', 'jj', '<ESC>', {noremap = true})
map('n', 't', ':NvimTreeToggle<CR>', {noremap = true})

