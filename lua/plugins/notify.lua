return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      stages = "static",  -- Disable animation
      timeout = 3000,    -- Display time in milliseconds
      render = "default",
      background_colour = "#000000",
    })
    
    -- Set as default notify handler
    vim.notify = require("notify")
  end,
}

