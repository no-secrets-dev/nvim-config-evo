-- In lua/plugins/terminal.lua
return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      direction = 'horizontal',
      size = 15,
    })
    
    -- Try different key representations
    local opts = {silent = true, noremap = true}
        --
    -- Method 1: Raw keycode
    -- vim.keymap.set({'n', 'i', 't'}, '<C-_>', '<cmd>ToggleTerm<CR>', opts)
        --
    -- Debug print to check key reception
    vim.keymap.set('n', '<C-/>', function()
        print("Ctrl+/ pressed!")
        vim.cmd('ToggleTerm')
    end, {silent = false})
  end
}

