-- In lua/plugins/terminal.lua
return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      direction = 'horizontal',
      size = 15,
    })
    
    -- Explicit mappings for both modes
    vim.keymap.set({'n', 't'}, '<C-/>', 
      function() 
        vim.cmd('ToggleTerm')
      end, 
      {silent = true, noremap = true}
    )
  end
}

