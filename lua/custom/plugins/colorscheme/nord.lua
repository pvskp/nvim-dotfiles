return {
	"shaunsingh/nord.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		-- Example config in lua
		vim.g.nord_contrast = true
		vim.g.nord_borders = false
		vim.g.nord_disable_background = false
		vim.g.nord_italic = true
		vim.g.nord_uniform_diff_background = true
		vim.g.nord_bold = true

		-- Load the colorscheme
		require("nord").set()
	end,
}
