P = function(v)
	print(vim.inspect(v))
	return v
end

LAZY_PLUGIN_SPEC = {}
pon = true
poff = false

---loads a plugin to lazy
---@param plugin_relative_path string the relative path to
--- "custom.plugins" where the plugin config is located
spec = function(active, plugin_relative_path)
	if active == false then
		return
	end
	local plugins = "custom.plugins."
	table.insert(LAZY_PLUGIN_SPEC, { import = plugins .. plugin_relative_path })
end

function FormatColor(color)
	if not color then
		return nil
	end
	return string.format("#%06x", color)
end

function CopyHighlight(src, dest)
	local string_hl = vim.api.nvim_get_hl_by_name(src, true)
	vim.api.nvim_set_hl(0, dest, {
		fg = FormatColor(string_hl.foreground),
		bg = FormatColor(string_hl.background),
		bold = string_hl.bold,
		italic = string_hl.italic,
	})
end

function Highlight_word(word, color)
	local group_name = "Highlight" .. word
	vim.cmd(string.format("highlight %s guifg=%s", group_name, color))
	vim.cmd(string.format("syntax match %s /\\<%s\\>/", group_name, word))
end

-- Highlight_word("offl", "#F54534")
-- Highlight_word("on", "#9FF592")
