return {
	{ "jiangmiao/auto-pairs" },
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup()
		end,
	},
	{
		"tpope/vim-commentary",
	},
	{ "tpope/vim-repeat" },
}
