local opt = vim.opt

-- Basic editor options
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
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
