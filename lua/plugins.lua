-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'ryanoasis/vim-devicons'
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
}
  use {
  'NTBBloodbath/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
}
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use 'nvim-lua/plenary.nvim'

-- Packages to Check 
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use { 'tami5/lspsaga.nvim' }

-- Things To Change in Future
    use 'jiangmiao/auto-pairs'
  -- Install nvim-cmp                                  
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
  -- For vsnip user.
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'
use 'rafamadriz/friendly-snippets'
-- Lua
use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
  use { 'ms-jpq/chadtree', run = 'python3 -m chadtree deps'}
  use  'mhartington/formatter.nvim'
end)
