local keymap = vim.keymap -- for conciseness
vim.g.mapleader = ' '

--general keymaps
keymap.set("i", "jk", "<ESC>")


-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- telescope

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})



-- windows
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>h")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")


-- vimtex
keymap.set("n", "<leader>lc", ":VimtexCompile<CR>")
keymap.set("n", "<leader>lv", ":VimtexView<CR>")
keymap.set("n", "<leader>lr", ":VimtexReloadState<CR>")


