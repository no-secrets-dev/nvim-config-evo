-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("tokyonight").setup({
--       style = "storm",  -- night, moon, storm, day
--       transparent = true,
--       terminal_colors = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       }
--     })
--     vim.cmd("colorscheme tokyonight")
--   end,
-- }
-- return {
--   "rebelot/kanagawa.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("kanagawa").setup({
--       theme = "dragon",  -- dragon, wave, lotus, autumn, summer, spring
--       background = {
--         cterm_color = "none",
--         transparent = true,
--       },
--       undercurl = true,
--       comment_style = {
--         italic = true,
--         bold = false,
--       },
--     })
--     vim.cmd("colorscheme kanagawa")
--   end,
-- }
-- return {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("tokyonight").setup({
--             style = "storm",  -- night, moon, storm, day
--             transparent = true,
--             terminal_colors = true,
--             styles = {
--                 sidebars = "transparent",
--                 floats = "transparent",
--             }
--         })
--         vim.cmd("colorscheme tokyonight")
--     end,
-- }
-- return {
--   "catppuccin/nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavour = "macchiato", -- mocha, macchiato, frappe, latte
--       transparent_background = true,
--       integrations = {
--         treesitter = true,
--         telescope = true,
--       }
--     })
--     vim.cmd("colorscheme catppuccin")
--   end,
-- }
return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_mode = true,
      contrast = "hard", -- soft, medium, hard
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
-- return {
--   {
--     "projekt0n/github-nvim-theme",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       options = {
--         transparent = true,
--         terminal_colors = true,
--         darken = {
--           floats = false,
--           sidebars = {
--             enable = false,
--           },
--         },
--       },
--     },
--     config = function(_, opts)
--       require("github-theme").setup(opts)
--       vim.cmd.colorscheme("github_dark_colorblind")
--     end,
--   },
-- }
