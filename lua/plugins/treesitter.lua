-- In lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function() 
    require("nvim-treesitter.configs").setup({
      ensure_installed = { 
        "lua", "rust", "solidity", "go", 
        "typescript", "javascript",
        "python",
      },
      highlight = { 
        enable = true,
        disable = { "latex", "tex" }  -- Explicitly disable for LaTeX
      },
      indent = { 
        enable = true,
        disable = { "latex", "tex" }  -- Disable indentation for LaTeX too
      },
    })
  end
}

