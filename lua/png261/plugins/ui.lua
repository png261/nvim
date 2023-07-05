return {
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "HiPhish/nvim-ts-rainbow2" },
	{
		"sainnhe/gruvbox-material",
		config = function()
			vim.g.gruvbox_material_transparent_background = 1
			vim.cmd.colorscheme("gruvbox-material")
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		end,
	},
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup()
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
}
