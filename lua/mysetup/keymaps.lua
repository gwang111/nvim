local map = vim.keymap.set

vim.g.mapleader = ','

map("n", "<leader>b", ":bprevious<CR>", { desc = "Previous buffer" })
map("n", "<leader>b", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>B", ":bfirst<CR>", { desc = "First buffer" })
map("n", "<leader>B", ":blast<CR>", { desc = "Last buffer" })
