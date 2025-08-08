return {
  'Jezda1337/nvim-html-css',
  dependencies = { 'hrsh7th/nvim-cmp', 'nvim-treesitter/nvim-treesitter' }, -- Use this if you're using nvim-cmp
  -- dependencies = { "saghen/blink.cmp", "nvim-treesitter/nvim-treesitter" }, -- Use this if you're using blink.cmp
  opts = {
    enable_on = { 'html' },
    handlers = {
      definition = {
        bind = 'g.',
      },
      hover = {
        bind = 'K',
        wrap = true,
        border = '#ffffff',
        position = 'cursor',
      },
    },
    documentation = {
      auto_show = true,
    },
    style_sheets = {},
  },
}
