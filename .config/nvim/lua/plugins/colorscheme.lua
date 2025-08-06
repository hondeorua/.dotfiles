return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  lazy = false,
  opts = {
    terminal_colors = true,
    vim.cmd.colorscheme 'unokai',
    vim.cmd.hi 'Comment gui=italic',
    vim.cmd.hi 'Function gui=italic,bold',
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' }),
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' }),
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' }),
    vim.api.nvim_set_hl(0, 'Visual', { bg = '#7e6bc9', fg = '#f8f8f2', bold = false }),
    vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'none' }),
    vim.api.nvim_set_hl(0, 'StatusLineNC', { bg = 'none' }),
    vim.api.nvim_set_hl(0, 'TabLineFill', { bg = 'NONE' }),
    vim.api.nvim_set_hl(0, 'TabLine', { bg = 'NONE' }),
    -- vim.api.nvim_set_hl(0, 'TabLineSel', { bg = 'NONE', fg = '#ffffff', bold = true, italic = true }),
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' }),
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none', fg = '#b8a9a9' }),
    vim.api.nvim_set_hl(0, 'LazyNormal', { bg = 'none', fg = '#ffffff' }),
    vim.api.nvim_set_hl(0, 'WhichKeyNormal', { bg = 'none', fg = '#ffffff' }),
    vim.api.nvim_set_hl(0, 'WhichKeyBorder', { bg = 'none', fg = '#ffffff' }),

    vim.api.nvim_set_hl(0, 'WinBar', { bg = 'none', fg = 'none', bold = true }),
    vim.api.nvim_set_hl(0, 'winseparator', { bg = 'none' }),

    -- vim.api.nvim_set_hl(0, 'MasonTitle', { bg = '#ffffff', fg = '#ffffff' }),
    vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#fa5482', fg = '#ffffff' }),

    vim.api.nvim_set_hl(0, 'LazyButton', { bg = 'none', fg = '#b8a9a9' }),

    -- vim.api.nvim_set_hl(0, 'LspReferenceText', { bg = '#fa5482', fg = '#ffffff' }),
  },
}
