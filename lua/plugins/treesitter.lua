return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function() 
    require("nvim-treesitter.configs").setup({
      ensure_installed = { 
        "lua",
        "rust",
        "solidity",
        "go", 
        "typescript",
        "javascript",
        "python",
        "toml",
        "ron",
        "gomod",
        "gowork",
        "gosum",
        "hcl",
      },
      
      highlight = { 
        enable = true,
        disable = { "latex", "tex" },
        additional_vim_regex_highlighting = {
          "rust",
          "solidity"
        },
      },
      
      indent = { 
        enable = true,
        disable = { "latex", "tex" }
      },
      
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["<leader>tf"] = "@function.outer",  -- tree-function
            ["<leader>ti"] = "@function.inner",  -- tree-inner-function
            ["<leader>tc"] = "@class.outer",     -- tree-class
            ["<leader>tC"] = "@class.inner",     -- tree-inner-class
            ["<leader>tb"] = "@block.outer",     -- tree-block
            ["<leader>tB"] = "@block.inner",     -- tree-inner-block
          },
        },
      },
    })
  end
}

