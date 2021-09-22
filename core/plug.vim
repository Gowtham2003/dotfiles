call plug#begin()                                       
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update      
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
    Plug 'akinsho/bufferline.nvim'
    Plug 'mhartington/oceanic-next'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'b3nj5m1n/kommentary'
  Plug 'glepnir/lspsaga.nvim'
  " Install nvim-cmp                                      
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  " Install the buffer completion source                  
  Plug 'hrsh7th/cmp-buffer'
  " For vsnip user.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update      
  Plug 'folke/trouble.nvim'
  Plug 'kyazdani42/nvim-tree.lua'
call plug#end()
