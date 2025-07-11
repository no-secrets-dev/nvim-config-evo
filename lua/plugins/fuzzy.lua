return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("fzf-lua").setup({
            winopts = { 
                preview = { default = 'bat' },
            },
            fzf_opts = {
                ["--history"] = vim.fn.expand("~/.local/share/nvim/fzf-lua-history"),
            },
            keymap = {
                fzf = {
                    ["ctrl-p"] = "previous-history",
                    ["ctrl-n"] = "next-history",
                }
            }
        })
    end
}

