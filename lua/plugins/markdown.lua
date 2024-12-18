-- this does not work automatically for some reason
-- need to manually build after installing?
return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function() vim.fn["mkdp#util#install"]() end,
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    -- keys = {
    --     { "mdmd", ft = "markdown", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview", mode = "n" },
    -- },
}

