return {
	"sbdchd/neoformat",
	config = function()
		vim.g.neoformat_enabled_python = { "black" }
		vim.keymap.set("n", "<leader>fm", vim.cmd.LspZeroFormat)
	end,
}
