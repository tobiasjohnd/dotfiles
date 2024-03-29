return {
    "neovim/nvim-lspconfig",
    dependencies = {

	--manage lsp servers
	"williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",

	--completion
	"hrsh7th/nvim-cmp",
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"folke/neodev.nvim",
	--"hrsh7th/cmp-path"
	--"hrsh7th/cmp-cmdline"

	-- fancy lsp notifications
        "j-hui/fidget.nvim",
    },

    config = function()
	local capabilities = require("cmp_nvim_lsp").default_capabilities()

	local default_handler = function(server)
	    require("lspconfig")[server].setup({
		capabilities = capabilities
	    })
	end
	local lua_handler = function ()
	    require("neodev").setup({
		-- add any options here, or leave empty to use the default settings
	    })
	    require("lspconfig").lua_ls.setup({
		capabiliteis = capabilities,
		settings = {
		    Lua = {
			diagnostics = {
			    globals = {
				"vim",
				"it",
				"describe",
				"before_each",
				"after_each"
			    },
			}
		    }
		}
	    })
	end

	require("fidget").setup({})
	require("mason").setup()
	require("mason-lspconfig").setup({
	    ensure_installed = {
		"lua_ls",
		"clangd", -- requires python
		"cmake", -- requires unzip
		"bashls", -- requires node
	    },
	    handlers = {
		default_handler,
		["lua_ls"] = lua_handler
	    },
	})

	local cmp = require('cmp')
	cmp.setup({
	    snippet = {
		expand = function(args)
		    require("luasnip").lsp_expand(args.body)
		end,
	    },

	    sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" }
	    },
	    mapping = cmp.mapping.preset.insert({
		-- Enter key confirms completion item
		['<CR>'] = cmp.mapping.confirm({select = false}),
                ['<Tab>'] = cmp.mapping.select_next_item({
		    behavior = cmp.SelectBehavior.Select
		}),
		-- Ctrl + space triggers completion menu
		['<C-Space>'] = cmp.mapping.complete(),
	    }),
	})
    end
}
