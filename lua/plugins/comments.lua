return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      -- Use Alt+/ for both line and block commenting
      toggler = {
        line = '<A-/>',
      },
      opleader = {
        line = '<A-/>',
      },
      -- Disable other mappings we don't need
      extra = {
        above = false,
        below = false,
        eol = false,
      },
      -- Make sure it works in all modes
      mappings = {
        basic = true,
        extra = false,
      },
    })

    -- Additional keymaps to ensure Alt+/ works in all modes
    vim.keymap.set('n', '<A-/>', 'gcc', { remap = true })
    vim.keymap.set('v', '<A-/>', 'gc', { remap = true })
    vim.keymap.set('i', '<A-/>', '<Esc>gcc', { remap = true })
  end
}

