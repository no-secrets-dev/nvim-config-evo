-- In lua/plugins/terminal.lua
return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            direction = 'float',
            float_opts = {
                border = 'single',
                width = function()
                    return math.floor(vim.o.columns)
                end,
                height = function()
                    return math.floor(vim.o.lines * 0.3)  -- Adjust this value to change height
                end,
                row = function()
                    return vim.o.lines - math.floor(vim.o.lines * 0.3) - 1  -- Position at bottom
                end,
                col = 0,  -- Align to left edge
                winblend = 0,  -- No transparency
            },
            size = 15,
            shade_terminals = true, -- Enable terminal shading
            shading_factor = '0', -- Darken the terminal. Negative values will lighten.
            highlights = {
                Normal = {
                    guibg = "#2A2A2A",
                },
                NormalFloat = {
                    link = 'Normal'
                },
                FloatBorder = {
                    guifg = "#3c3836",
                    guibg = "#2A2A2A",
                },
            },
            start_in_insert = true,
            persist_mode = false,
            on_open = function(term)
                vim.cmd("startinsert!")
            end,
        })

        -- Try different key representations
        local opts = {silent = true, noremap = true}

        -- Method 1: Raw keycode
        -- vim.keymap.set({'n', 'i', 't'}, '<C-_>', '<cmd>ToggleTerm<CR>', opts)

        -- Debug print to check key reception
        vim.keymap.set('n', '<C-/>', function()
            print("Ctrl+/ pressed!")
            vim.cmd('ToggleTerm')
        end, {silent = false})
    end
}

