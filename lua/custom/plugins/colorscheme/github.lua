return {
  'projekt0n/github-nvim-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  opts = {
    options = {
      -- Compiled file's destination location
      hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
      hide_nc_statusline = true, -- Override the underline style for non-active statuslines
      transparent = false, -- Disable setting background
      terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
      dim_inactive = true, -- Non focused panes set to alternative background
      module_default = true, -- Default enable value for modules
      styles = { -- Style to be applied to different syntax groups
        comments = 'NONE', -- Value is any valid attr-list value `:help attr-list`
        functions = 'NONE',
        keywords = 'NONE',
        variables = 'NONE',
        conditionals = 'NONE',
        constants = 'NONE',
        numbers = 'NONE',
        operators = 'NONE',
        strings = 'NONE',
        types = 'NONE',
      },
      inverse = { -- Inverse highlight for different types
        match_paren = false,
        visual = false,
        search = false,
      },
      darken = { -- Darken floating windows and sidebar-like windows
        floats = true,
        sidebars = {
          enabled = true,
          list = {}, -- Apply dark background to specific windows
        },
      },
    },
    palettes = {},
    specs = {},
    groups = {},
  },
  config = function(_, opts)
    require('github-theme').setup(opts)
    vim.cmd 'colorscheme github_light_default'
    vim.cmd 'highlight! Todo guibg=None'
  end,
}
