return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	lazy = false,
	init = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>f", builtin.find_files, {})
		vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>e", builtin.buffers, {})
		vim.keymap.set("n", "<leader>h", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>/", ":Telescope current_buffer_fuzzy_find<CR>", { silent = true })
	end,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		require("telescope").setup({
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
				buffers = {
					theme = "dropdown",
					previewer = false,
					show_all_buffers = true,
					mappings = {
						i = {
							["<c-d>"] = require("telescope.actions").delete_buffer,
							["<C-j>"] = require("telescope.actions").move_selection_next,
							["<C-k>"] = require("telescope.actions").move_selection_previous,
							["<Esc>"] = require("telescope.actions").close,
							["<leader>e"] = require("telescope.actions").close,
						},
					},
					-- ignore_current_buffer = true,
				},
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})
		require("telescope").load_extension("ui-select")
	end,
}
