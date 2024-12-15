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

