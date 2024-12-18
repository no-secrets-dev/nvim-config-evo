return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = false,
            -- enable_git_status = true,
            enable_diagnostics = true,
            filesystem = {
                follow_current_file = {
                    enabled = true,
                },
                hijack_netrw_behavior = "open_default",
                filesystem = {
                    filtered_items = {
                        visible = true,
                        hide_dotfiles = false,
                        hide_gitignored = false,
                        hide_hidden = false,
                    },
                },
            },
            window = {
                position = "left",
                width = 30,
                mappings = {
                    ["<space>"] = "toggle_node",
                    ["<cr>"] = "open",
                    ["P"] = { "toggle_preview" },
                    ["s"] = "open_vsplit",
                    ["S"] = "open_split",
                    ["a"] = "add",
                    ["d"] = "delete",
                    ["r"] = "rename",
                    ["c"] = "copy",
                    ["m"] = "move",
                    ["q"] = "close_window",
                    ["R"] = "refresh",
                    ["?"] = "show_help",
                }
            },
        })

        -- Open neo-tree on startup with 'nvim .'
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                if vim.fn.argv(0) == "." then
                    vim.cmd("Neotree")
                end
            end
        })

        -- Map Space+Shift+E to toggle Neo-tree
        vim.keymap.set('n', '<Space>E', ':Neotree toggle<CR>', { silent = true })
    end
}

