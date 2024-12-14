return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("fzf-lua").setup({
      winopts = { preview = { default = 'bat' } },
    })
    -- Keymaps
    -- vim.keymap.set('n', '<C-f>', "<cmd>lua require('fzf-lua').files()<CR>")
    -- vim.keymap.set('n', '<C-g>', "<cmd>lua require('fzf-lua').live_grep()<CR>")
  end
}

