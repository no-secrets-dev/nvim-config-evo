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
                -- "nil_ls",  -- Using system-installed nil instead
                -- "solidity",  -- Changed from solc
                -- "texlab",
            },
        })

        local lspconfig = require("lspconfig")
        local configs = require("lspconfig.configs")
        -- Register circom as a custom server
        if not configs.circom then
            configs.circom = {
                default_config = {
                    cmd = { "circom-lsp" },
                    filetypes = { "circom" },
                    root_dir = require("lspconfig.util").root_pattern("package.json", ".git"),
                    settings = {},
                },
            }
        end

        -- Individual server configurations
        local servers = {
            -- rust_analyzer = {
            --     settings = {
            --         ["rust-analyzer"] = {
            --             diagnostics = {
            --                 enable = false,
            --             },
            --             inlayHints = {
            --                 enable = false,
            --             },
            --         },
            --     },
            --     handlers = {
            --         ["textDocument/publishDiagnostics"] = function() end,
            --     },
            -- },
            -- solidity = {
            --     cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
            --     filetypes = { "solidity", "yul" },
            --     root_dir = require("lspconfig.util").root_pattern("foundry.toml", "hardhat.config.*", ".git"),
            --     single_file_support = true,
            -- },
            gopls = {},
            ts_ls = {},
            nil_ls = {},
            -- texlab = {},
            circom = {
                cmd = { "circom-lsp" },
                filetypes = { "circom" },
                root_dir = require("lspconfig.util").root_pattern("package.json", ".git"),
            },
        }

        -- Setup all servers with their specific configs
        for server, config in pairs(servers) do
            config.capabilities = require("cmp_nvim_lsp").default_capabilities()
            lspconfig[server].setup(config)
        end
    end
}

