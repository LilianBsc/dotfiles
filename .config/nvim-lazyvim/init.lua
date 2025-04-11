-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- keymap
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('n', '<C-q>', ':q<CR>')
