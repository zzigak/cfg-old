-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugin-setup.lua source <afile> | PackerSync
    augroup end
]])

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

 use 'lervag/vimtex'
  -- Themes
  use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
  use({ 'rose-pine/neovim', as = 'rose-pine' })
--  use 'folke/tokyonight.nvim'
--  use 'Mofiqul/dracula.nvim'
--  use "rebelot/kanagawa.nvim"
  use "ellisonleao/gruvbox.nvim"
  use 'shaunsingh/solarized.nvim'
  use {
    "ViViDboarder/wombat.nvim",
    requires = "rktjmp/lush.nvim",
}
  use 'metalelf0/jellybeans-nvim'

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  -- lualine
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- treesitter
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    -- nvim-tree
    use "nvim-tree/nvim-tree.lua"

    -- telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }

    }

    -- telescope fzf
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- vim tmux
    -- use "christoomey/vim-tmux-navigator"

    -- autocomplete
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")

    -- snippets, without ULTISNIP
    use('L3MON4D3/LuaSnip')
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")
    
    --lsp
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")

    if packer_bootstrap then
        require("packer").sync()
    end

end)


