local map = vim.keymap.set

vim.g.mapleader = ','

-- buffer mappings
map("n", "[b", ":bprevious<CR>", { desc = "Previous buffer" })
map("n", "]b", ":bnext<CR>", { desc = "Next buffer" })
map("n", "[B", ":bfirst<CR>", { desc = "First buffer" })
map("n", "]B", ":blast<CR>", { desc = "Last buffer" })
map("n", "]q", ":bd<CR>", { desc = "Close buffer" })

-- telescope mappings
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = "" })
map('n', '<leader>fg', builtin.live_grep, { desc = "" })
map('n', '<leader>fb', builtin.buffers, { desc = "" })
map('n', '<leader>fh', builtin.help_tags, { desc = "" })

