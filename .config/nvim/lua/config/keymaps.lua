vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Map esc to home row in insert mode
vim.keymap.set('i', 'jk', '<Esc>', {})
vim.keymap.set('i', 'kj', '<Esc>', {})

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')

-- move
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- don't move my cursor
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- leader p to paste without loosing the register
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste over visual selection, keep register" })

-- leader y to yank to clipboard
vim.keymap.set({ "n", "x" }, "<leader>y", "\"+y", { desc = "Yank to clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Yank to clipboard" })

-- leader s to replace word under cursor in the whole buffer
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace word under cursor in whole buffer" })
