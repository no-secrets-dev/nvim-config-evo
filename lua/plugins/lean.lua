return {
  {
    'Julian/lean.nvim',
    event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },
    dependencies = {
      'neovim/nvim-lspconfig',
      'nvim-lua/plenary.nvim',
    },
    opts = {
      lsp = {
        init_options = {
          editDelay = 0,
          hasWidgets = false  -- Disable widgets
        }
      },
      infoview = {
        autoopen = true,     -- Disable autoopening infoview
        enable = true        -- Disable infoview completely
      },
      abbreviations = {
        enable = true        -- Disable abbreviations
      },
      mappings = false,       -- Disable default mappings
      progress_bars = {
        enable = false        -- Disable progress bars
      }
    }
  }
}

