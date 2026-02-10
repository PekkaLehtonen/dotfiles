-- global
vim.g.mapleader = '\\'

require("config.lazy")
require("lualine").setup()


vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true

-- Set line numbers
vim.o.number = true

-- Work with multiple files
vim.o.hidden = true

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

-- Map esc to home row in insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {})
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', {})

-- remap window movement without <C-w>
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><C-h>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w><C-j>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w><C-k>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w><C-l>', { noremap = true })

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')

