
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup {}
require'lspconfig'.intelephense.setup {}
require'lspconfig'.tailwindcss.setup {}
require'lspconfig'.clangd.setup {}
require("bufferline").setup{}
local saga = require 'lspsaga'
saga.init_lsp_saga()
require('kommentary.config').use_extended_mappings()
require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.rs FormatWrite
augroup END
]], true)

require('formatter').setup({
  logging = false,
  filetype = {
    javascript = {
        -- prettierd
       function()
          return {
            exe = "prettierd",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    javascriptreact = {
        -- prettierd
       function()
          return {
            exe = "prettierd",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    typescript = {
        -- prettierd
       function()
          return {
            exe = "prettierd",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    typescriptreact = {
        -- prettierd
       function()
          return {
            exe = "prettierd",
            args = {vim.api.nvim_buf_get_name(0)},
            stdin = true
          }
        end
    },
    -- other formatters ...
  }
})

require("emmet")

