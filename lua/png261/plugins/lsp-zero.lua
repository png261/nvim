return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		config = function()
			require("lsp-zero.settings").preset({})
		end,
	},

	-- Autocompletion
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
		config = function()
			require("lsp-zero.cmp").extend()

			-- And you can configure cmp even more, if you want to.
			local cmp = require("cmp")
			local cmp_action = require("lsp-zero.cmp").action()
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				completion = {
					autocomplete = false,
				},
				window = {
					documentation = cmp.config.disable,
				},
				sources = {
					{ name = "path" },
					{ name = "nvim_lsp" },
					{ name = "buffer", keyword_length = 3 },
					{ name = "luasnip", keyword_length = 2 },
				},
				mapping = {
					["<CR>"] = cmp.mapping.confirm({ select = false }),
					["<C-space>"] = cmp.mapping.complete(),
					["<C-f>"] = cmp_action.luasnip_jump_forward(),
					["<C-b>"] = cmp_action.luasnip_jump_backward(),
				},
			})
		end,
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "williamboman/mason-lspconfig.nvim" },
			{
				"williamboman/mason.nvim",
				build = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
		},
		config = function()
			vim.diagnostic.config({
				virtual_text = false,
			})

			local lsp = require("lsp-zero").preset({})

			lsp.on_attach(function(client, bufnr)
				lsp.default_keymaps({ buffer = bufnr })
			end)

			require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

			lsp.setup()
		end,
	},
}
