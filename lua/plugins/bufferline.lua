return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VimEnter",
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers", -- Set to "buffers" to show all buffers
                numbers = "none",
                close_command = "bdelete! %d",
                right_mouse_command = "bdelete! %d",
                left_mouse_command = "buffer %d",
                middle_mouse_command = nil,
                indicator = {
                    icon = '▎',
                    style = 'icon',
                },
                buffer_close_icon = '',
                modified_icon = '●',
                close_icon = '',
                left_trunc_marker = '',
                right_trunc_marker = '',
                max_name_length = 18,
                max_prefix_length = 15,
                truncate_names = true,
                tab_size = 18,
                diagnostics = false,
                offsets = {},
                show_buffer_icons = true,
                show_buffer_close_icons = true,
                show_close_icon = true,
                show_tab_indicators = true,
                persist_buffer_sort = true,
                separator_style = "thin",
                enforce_regular_tabs = true,
                always_show_bufferline = true,
            },
            highlights = {
                buffer_selected = {
                    fg = "#ffffff",
                    bg = "#4e4e4e",
                    bold = true,
                    italic = true,
                },
                buffer_visible = {
                    fg = "#808080",
                    bg = "#3a3a3a",
                },
                buffer = {
                    fg = "#808080",
                    bg = "#2b2b2b",
                },
                fill = {
                    bg = "#1a1a1a",
                },
            },
        })
        vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev buffer" })
        vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
        vim.keymap.set("n", "<C-x>", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
        vim.keymap.set('n', '<A-h>', ':BufferLineMovePrev<CR>')
        vim.keymap.set('n', '<A-l>', ':BufferLineMoveNext<CR>')
        vim.keymap.set("n", "<C-x>", function()
            local buffers = vim.fn.getbufinfo({buflisted = 1})
            local current_buf = vim.api.nvim_get_current_buf()

            if #buffers > 1 then
                pcall(vim.cmd, "BufferLineCycleNext")
                pcall(vim.cmd, "bdelete! " .. current_buf)
            else
                -- Last buffer - create new empty buffer and delete the old one
                pcall(vim.cmd, "enew")
                if vim.api.nvim_buf_is_valid(current_buf) then
                    pcall(vim.cmd, "bdelete! " .. current_buf)
                end
            end
        end, { desc = "Close current buffer" })
    end,
}

