return {
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "javascript", "html", "cpp", "lua", "java" },
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = true,
				},
				textobjects = {
					select = {
						enable = true,
						lookahead = true,
						keymaps = {
							["af"] = "@function.outer",
							["if"] = "@function.inner",
							["ac"] = "@class.outer",
							["ic"] = "@class.inner",
						},
					},
					swap = {
						enable = true,
						swap_next = {
							["<leader>x]"] = "@parameter.inner",
						},
						swap_previous = {
							["<leader>x["] = "@parameter.inner",
						},
					},
				},
			})
		end,
	},
}
