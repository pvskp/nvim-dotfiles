return {
  'navarasu/onedark.nvim',
  priority = 1000,
  dependencies = {
    "echasnovski/mini.files"
  },
  lazy = false,
  opts = {
    -- Main options --
    style = 'dark',               -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,          -- Show/hide background
    term_colors = true,           -- Change terminal color as per the selected theme style
    ending_tildes = false,        -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

    -- toggle theme style ---
    toggle_style_key = nil,                                                              -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
    toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
    code_style = {
      comments = 'italic',
      keywords = 'bold',
      functions = 'bold',
      strings = 'none',
      variables = 'none',
    },

    -- Lualine options --
    lualine = {
      transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {},     -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
      darker = true,     -- darker colors for diagnostic
      undercurl = true,  -- use undercurl instead of underline for diagnostics
      background = true, -- use background color for virtual text
    },
  },
  config = function(_, opts)
    require('onedark').setup(opts)
    require('onedark').load()

    set_hl("MatchParen", { bg = onedark.red, fg = "#ffffff" })

    set_hl("CursorLineNr", { fg = onedark.orange, bold = true })

    set_hl("TelescopePromptBorder", { fg = onedark.purple })
    set_hl("TelescopeResultsBorder", { fg = onedark.purple })
    set_hl("TelescopePreviewBorder", { fg = onedark.purple })

    set_hl("GitSignsCurrentLineBlame", { fg = onedark.bg2 })

    set_hl("MiniFilesBorder", { fg = onedark.purple })
    set_hl('MiniFilesNormal', { bg = nil })
    set_hl('MiniFilesTitle', { fg = onedark.green })
    set_hl('MiniFilesTitleFocused', { fg = onedark.green, bold = true })
  end,
}
