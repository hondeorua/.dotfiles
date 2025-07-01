return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local custom_horizon = require 'lualine.themes.horizon'
    custom_horizon.normal.c.bg = 'none'
    custom_horizon.visual.c.bg = 'none'
    custom_horizon.insert.c.bg = 'none'
    custom_horizon.replace.c.bg = 'none'
    custom_horizon.command.c.bg = 'none'
    custom_horizon.inactive.c.bg = 'none'
    custom_horizon.normal.c.fg = 'none'
    custom_horizon.visual.c.fg = 'none'
    custom_horizon.insert.c.fg = 'none'
    custom_horizon.replace.c.fg = 'none'
    custom_horizon.command.c.fg = 'none'
    custom_horizon.inactive.c.fg = 'none'

    require('lualine').setup {
      options = {
        theme = custom_horizon,
        globalstatus = true,
      },
      -- sections = {
      --   lualine_c = { '' },
      -- },
    }
  end,
}
