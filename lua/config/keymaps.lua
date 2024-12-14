local map = vim.keymap.set

-- Fuzzy finding
map('n', '<C-f>', "<cmd>lua require('fzf-lua').files()<CR>")
map('n', '<C-g>', "<cmd>lua require('fzf-lua').live_grep()<CR>")
map('n', '<leader>b', "<cmd>lua require('fzf-lua').buffers()<CR>")

-- LSP
map('n', 'gd', vim.lsp.buf.definition)
map('n', 'gr', vim.lsp.buf.references)
map('n', 'K', vim.lsp.buf.hover)

-- Terminal
map('n', '<C-_>', '<cmd>ToggleTerm<CR>')
-- map('i', '<C-_>', '<cmd>ToggleTerm<CR>')
map('t', '<C-_>', '<cmd>ToggleTerm<CR>')

-- -- In lua/config/keymaps.lua
-- vim.api.nvim_create_user_command('W', function()
--     vim.ui.select({'Yes', 'No'}, {
--         prompt = 'Save file?',
--     }, function(choice)
--         if choice == 'Yes' then
--             vim.cmd('write')
--         end
--     end)
-- end, {})

