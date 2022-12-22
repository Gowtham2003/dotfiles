local cmp = require("cmp")

	cmp.setup({
		preselect = cmp.PreselectMode.Item,
		window = {
			completion = cmp.config.window.bordered(),
			documentation = cmp.config.window.bordered(),
		},
		formatting = {
      fields = {'kind', 'abbr', 'menu'},
			format = function(entry, vim_item)
				local lspkind_icons = {
					Text = "",
					Method = "",
					Function = "",
					Constructor = " ",
					Field = "",
					Variable = "",
					Class = "",
					Interface = "",
					Module = "硫",
					Property = "",
					Unit = " ",
					Value = "",
					Enum = " ",
					Keyword = "ﱃ",
					Snippet = " ",
					Color = " ",
					File = " ",
					Reference = "Ꮢ",
					Folder = " ",
					EnumMember = " ",
					Constant = " ",
					Struct = " ",
					Event = "",
					Operator = "",
					TypeParameter = " ",
				}
        local meta_type = vim_item.kind
				-- load lspkind icons
				vim_item.kind = lspkind_icons[vim_item.kind]..''

				vim_item.menu = ({
					buffer = " Buffer",
					nvim_lsp = meta_type,
					path = " Path",
					luasnip = " LuaSnip"
				})[entry.source.name]

				return vim_item
			end,
		},
		-- You can set mappings if you want
		mapping = cmp.mapping.preset.insert({
			["<CR>"] = cmp.mapping.confirm({ select = true }),
			["<C-p>"] = cmp.mapping.select_prev_item(),
			["<C-n>"] = cmp.mapping.select_next_item(),
			["<C-d>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-e>"] = cmp.mapping.close(),
		}),
		snippet = {
			expand = function(args)
				--require("luasnip").lsp_expand(args.body)
        vim.fn["vsnip#anonymous"](args.body)
			end,
			},
		sources = {
			{ name = "nvim_lsp" },
			-- { name = "luasnip" },
			{ name = "vsnip" },
			{ name = "path" },
			{ name = "buffer" },
			},
		}
	)
  vim.cmd('hi CmpFloatBorder guifg=red')

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  require('lspconfig')["tsserver"].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities() }
  -- require('lspconfig')["sumneko_lua"].setup {
  --  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- }

  require('lspconfig')["intelephense"].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities() }
  require('lspconfig')["vls"].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities()  }
  require('lspconfig')["pyright"].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities()
  }
  require('lspconfig')["intelephense"].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities()
  }
  require('lspconfig')["tailwindcss"].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities()
  }
  require('lspconfig')["clangd"].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities()
  }

  require('lspconfig')["svelte"].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities()
  }

