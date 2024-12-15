-- In lua/plugins/latex.lua
return {
    {
        "lervag/vimtex",
        lazy = false,
        init = function()
            -- Basic VimTeX settings
            vim.g.vimtex_indent_enabled = 0
            vim.g.vimtex_view_method = "zathura"

            -- Enable concealment but show raw text on cursor line
            vim.opt.conceallevel = 2
            vim.opt.concealcursor = ""  -- Empty string means NEVER conceal under cursor

            -- Ensure VimTeX syntax is enabled
            vim.g.vimtex_syntax_enabled = 1
            vim.g.vimtex_syntax_conceal_enabled = 1

            -- Disable all VimTeX warnings
            vim.g.vimtex_message_ignore = true

        end,
    },
}

