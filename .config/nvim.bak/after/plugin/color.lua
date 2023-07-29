--vim.g.tokyonight_transparent_sidebar = true
--vim.g.tokyonight_transparent = true
vim.o.background = "dark"


--vim.cmd[[colorscheme github_dark]]
--vim.cmd[[colorscheme tokyonight-night]]
--vim.cmd[[colorscheme dracula]]
-- vim.cmd[[colorscheme gruvbox]]
--vim.cmd[[colorscheme kanagawa]]
vim.g.dracula_transparent = true
--vim.cmd[[colorscheme solarized]]
--vim.cmd[[colorscheme jellybeans-nvim]]
vim.cmd[[colorscheme rose-pine]]

vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

vim.cmd[[hi NvimTreeNormal guibg=NONE]]
