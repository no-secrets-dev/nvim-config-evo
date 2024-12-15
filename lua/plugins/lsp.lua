return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "rcarriga/nvim-notify",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "rust_analyzer",
                "gopls",
                "ts_ls",
                "solidity",  -- Changed from solc
                -- "texlab",
            },
        })

        local lspconfig = require("lspconfig")
        
        -- Individual server configurations
        local servers = {
            rust_analyzer = {
                settings = {
                    ["rust-analyzer"] = {
                        checkOnSave = {
                            command = "clippy",
                        },
                        cargo = {
                            allFeatures = true,
                        },
                        procMacro = {
                            enable = true,
                        },
                    },
                },
            },
            solidity = {
                cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
                filetypes = { "solidity", "yul" },
                root_dir = require("lspconfig.util").root_pattern("foundry.toml", "hardhat.config.*", ".git"),
                single_file_support = true,
            },
            gopls = {},
            ts_ls = {},
            -- texlab = {},
        }

        -- Setup all servers with their specific configs
        for server, config in pairs(servers) do
            config.capabilities = require("cmp_nvim_lsp").default_capabilities()
            lspconfig[server].setup(config)
        end
    end
}

