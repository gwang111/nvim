local map = vim.keymap.set

vim.g.mapleader = ','

map("n", "[b", ":bprevious<CR>", { desc = "Previous buffer" })
map("n", "]b", ":bnext<CR>", { desc = "Next buffer" })
map("n", "[B", ":bfirst<CR>", { desc = "First buffer" })
map("n", "]B", ":blast<CR>", { desc = "Last buffer" })
