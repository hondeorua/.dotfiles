-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- tabline keymaps (no longer using)
-- vim.api.nvim_set_keymap('n', '<leader>ta', ':$tabnew<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>to', ':tabonly<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>tn', ':tabn<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<leader>tp', ':tabp<CR>', { noremap = true })
-- -- move current tab to previous position
-- vim.api.nvim_set_keymap('n', '<leader>tmp', ':-tabmove<CR>', { noremap = true })
-- -- move current tab to next position
-- vim.api.nvim_set_keymap('n', '<leader>tmn', ':+tabmove<CR>', { noremap = true })

vim.keymap.set('n', 'K', function()
  vim.lsp.buf.hover {
    border = 'rounded',
  }
end)

-- keymap to chmod a script
vim.keymap.set('n', '<leader>cx', ':!chmod +x %<CR>', { noremap = true })

-- PgUp and PgDn auto center cursor
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })

--
vim.keymap.set('x', '<leader>p', '"_dP', { noremap = true })
