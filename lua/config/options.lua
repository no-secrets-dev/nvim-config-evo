local opt = vim.opt

-- Basic editor options
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.expandtab = true
vim.opt.expandtab = true      -- Convert tabs to spaces
vim.opt.smartindent = true    -- Smart autoindenting on new lines
vim.opt.autoindent = true     -- Copy indent from current line when starting a new line
vim.opt.cindent = true        -- Stricter indenting rules for C-like languages
vim.opt.tabstop = 4           -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4        -- Size of an indent

opt.mouse = 'a'
opt.termguicolors = true
opt.clipboard = 'unnamedplus'

-- In lua/config/options.lua
local opt = vim.opt

-- Basic wrapping settings
opt.wrap = true           -- Enable line wrapping
opt.linebreak = true      -- Break lines at word boundaries
opt.breakindent = true    -- Preserve indentation in wrapped text
opt.showbreak = "↪ "      -- Show wrap indicator
opt.textwidth = 80        -- Set text width for hard wrapping
opt.formatoptions = "tcqjl"  -- Control auto-formatting

-- For LaTeX files specifically
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "tex", "latex" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.breakindent = true
    vim.opt_local.textwidth = 80
  end,
})

vim.opt.confirm = true  -- Shows confirmation dialog

-- In lua/config/options.lua or similar config file
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- Light blue highlight for visual selection
    vim.api.nvim_set_hl(0, "Visual", {
      bg = "#3e68d7",  -- Light blue background
      fg = "#ffffff",  -- White text for contrast
    })
  end,
})
