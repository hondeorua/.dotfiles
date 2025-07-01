return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    require('treesitter-context').setup {
      enable = true,
      -- max_lines = 0,
      -- trim_scope = "outer",
    }
  end,
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
}
