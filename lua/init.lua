
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup {}
require'lspconfig'.intelephense.setup {}
require'lspconfig'.tailwindcss.setup {}
require("bufferline").setup{}
local saga = require 'lspsaga'
saga.init_lsp_saga()
require('kommentary.config').use_extended_mappings()
require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
