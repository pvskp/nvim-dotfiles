return {
  'echasnovski/mini.icons',
  lazy = false,
  specs = {
    { 'nvim-tree/nvim-web-devicons', enabled = false, optional = true },
  },
  opts = {
    style = 'glyph',
  },
  init = function()
    package.preload['nvim-web-devicons'] = function()
      -- needed since it will be false when loading and mini will fail
      package.loaded['nvim-web-devicons'] = {}
      require('mini.icons').mock_nvim_web_devicons()
      return package.loaded['nvim-web-devicons']
    end
  end,
}
