return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    -- Enable transparent background
    transparent = false,

    -- Enable italics comments
    italic_comments = false,

    -- Replace all fillchars with ' ' for the ultimate clean look
    hide_fillchars = false,

    -- Modern borderless telescope theme
    borderless_telescope = false,

    -- Set terminal colors used in `:terminal`
    terminal_colors = true,

    theme = {
      variant = 'default', -- use "light" for the light variant
      highlights = {
        -- Highlight groups to override, adding new groups is also possible
        -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values
        -- Example:
        -- Comment = { fg = '#696969', bg = 'NONE', italic = true },
        -- Complete list can be found in `lua/cyberdream/theme.lua`
      },
    },
  },
  config = function(_, opts)
    require('cyberdream').setup(opts)
    vim.cmd 'colorscheme cyberdream'

    vim.cmd 'highlight! TelescopeNormal guibg=NONE'
    vim.cmd 'highlight! TelescopeBorder guibg=NONE'
    vim.cmd 'highlight! TelescopeTitle guibg=NONE'
  end,
}
