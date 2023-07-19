require("mysetup.plugins")
require("mysetup.keymaps")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- buffer
vim.bo.expandtab=true
vim.bo.shiftwidth=4
vim.bo.softtabstop=4

-- key bindings
local api = vim.api
local keymap = api.nvim_set_keymap

-- vim options
local opt = vim.opt

opt.termguicolors = true -- Enable colors in terminal
opt.hlsearch = true --Set highlight on search
opt.number = true --Make line numbers default
opt.mouse = "a" --Enable mouse mode
opt.undofile = true --Save undo history
opt.ignorecase = true --Case insensitive searching unless /C or capital in search
opt.smartcase = true -- Smart case
opt.clipboard = "unnamedplus" -- Access system clipboard
opt.breakindent = true --Enable break indent

-- set colorscheme
opt.termguicolors = true
-- rose-pine-moon, rose-pine-dawn
vim.cmd[[colorscheme rose-pine]]


-- configure file tree
require("nvim-tree").setup()

api.nvim_set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", {noremap = true})
api.nvim_set_keymap("n", "<leader>r", ":NvimTreeFocus<CR>", {noremap = true})
api.nvim_set_keymap("n", "<leader>f", ":NvimTreeFindFile<CR>", {noremap = true})

-- configure line
require("bufferline").setup{
    options={
        --separator_style = "slant",
        --offsets = {{filetype = "NvimTree", text = "File Explorer"}}
    }
}

-- configure treesitter
require("nvim-treesitter.configs").setup({
    auto_install = true,
    ensure_installed = {
        "python",
        "javascript",
        "typescript",
    },
    highlight = { enable = true },
    indent = { enable = true }
})

-- vim cmds

vim.cmd [[
    augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
    augroup end
]]
