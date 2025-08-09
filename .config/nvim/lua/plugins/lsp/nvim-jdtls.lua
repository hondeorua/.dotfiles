return {
  'mfussenegger/nvim-jdtls',
  config = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'java',
      callback = function(args)
        local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
        local workspace_dir = '/Users/hvu/.cache/jdtls/workspace/' .. project_name
        local config = {
          cmd = { '/Users/hvu/.local/share/nvim/mason/packages/jdtls/bin/jdtls', '-data', workspace_dir },
          root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
        }
        require('jdtls').start_or_attach(config)
      end,
    })
  end,
}
