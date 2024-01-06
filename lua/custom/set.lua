local options = {
	background = "dark",
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	cmdheight = 1, -- space in the neovim command line for displaying messages
	compatible = false,
	cursorline = false, -- highlight the current line
	expandtab = true, -- convert tabs to spaces
	hlsearch = false, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	linebreak = true, -- companion to wrap, don't split words
	wrap = false,
	number = true, -- the number of spaces inserted for each indentation
	numberwidth = 4, -- set number column width to 2 {default 4}
	path = ".,,**",
	relativenumber = true, -- set relative numbered lines
	scrolloff = 99999,
	shiftwidth = 2, -- the number of spaces inserted for each indentation
	-- showtabline = 2,                          -- always show tabs
	smartcase = true,
	smartindent = true, -- make indenting smarter again
	splitbelow = true,
	splitright = true,
	swapfile = false,
	tabstop = 2,
	timeoutlen = 300,
	undofile = true,
	updatetime = 250,
	wildmenu = true,
	autochdir = false,
	showmode = false,
	equalalways = false, -- I don't like my windows changing all the time
	pumblend = 0,
	signcolumn = "yes",
	virtualedit = "all",
	colorcolumn = "80",
	-- winblend = 0,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.g.netrw_banner = 0

local shape_group = vim.api.nvim_create_augroup("Shape", { clear = true })
vim.api.nvim_create_autocmd("VimLeave", {
	group = shape_group,
	command = "set guicursor=a:ver90,a:blinkon100",
})

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
