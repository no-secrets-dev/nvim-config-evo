return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
      opts = {
        position = {
          row = 2,
          col = "50%",
        },
        size = {
          width = "auto",
          height = "auto",
        },
        border = {
          style = "rounded",
        },
      },
    },
    messages = {
      enabled = true,
      view_search = false,
    },
    popupmenu = {
      enabled = true,
      backend = "nui",
    },
    notify = {
      enabled = true,
    },
    lsp = {
      progress = { enabled = false },
      hover = { enabled = false },
      signature = { enabled = false },
    },
    -- Add routes configuration to filter out "written" messages
    routes = {
      {
        filter = {
          event = "msg_show",
          kind = "",
          find = "written",
        },
        opts = { skip = true },
      },
    },
    config = function(_, opts)
        require("noice").setup(opts)

        -- Set custom highlight for line numbers
        vim.api.nvim_set_hl(0, 'LineNr', { fg = '#00FFFF'})
        vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#00FFFF', bold = true })
    end,
  },
}

