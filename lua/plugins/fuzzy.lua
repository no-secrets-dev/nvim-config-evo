return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("fzf-lua").setup({
            winopts = { 
                preview = { default = 'bat' }, 
                history_file = vim.fn.expand("~/.local/share/nvim/fzf-lua-history"),
            },
        })
        -- Keymaps
        -- vim.keymap.set('n', '<C-f>', "<cmd>lua require('fzf-lua').files()<CR>")
        -- vim.keymap.set('n', '<C-g>', "<cmd>lua require('fzf-lua').live_grep()<CR>")
    end
}

