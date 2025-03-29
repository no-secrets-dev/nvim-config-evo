vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- Set all line numbers to near cyan
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#FF4500', bold = true})

    -- Set current line number to bold
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#FF4500', bold = true })
  end
})

-- comment color
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "Comment", { fg = "#999999", italic = true })
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local cursor_pos = vim.fn.getpos('.')
    
    -- Save current view
    local view = vim.fn.winsaveview()
    
    -- Convert to unix
    vim.cmd([[set ff=unix]])
    vim.cmd([[%s/\r//ge]])  -- Remove carriage returns
    
    -- Restore view and cursor
    vim.fn.winrestview(view)
    vim.fn.setpos('.', cursor_pos)
  end,
})

vim.api.nvim_create_user_command('Pcc', function()
  local path = vim.fn.expand('%:p')
  vim.fn.setreg('+', path)
  vim.notify('Copied path: ' .. path)
end, {})

vim.api.nvim_create_user_command('Pcr', function()
  local relative_path = vim.fn.fnamemodify(vim.fn.expand('%'), ':.')
  vim.fn.setreg('+', relative_path)
  vim.notify('Copied relative path: ' .. relative_path)
end, {})
