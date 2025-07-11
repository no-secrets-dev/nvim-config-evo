return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function() vim.fn["mkdp#util#install"]() end,
    keys = {
      { "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview Toggle" },
    },
    ft = { "markdown" },
    config = function()
      vim.g.mkdp_auto_close = 0
      vim.g.mkdp_open_to_the_world = 1
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_browser = "msedge" -- Change to your preferred browser
      vim.g.mkdp_preview_options = {
        sync_scroll_type = 'middle',
        disable_sync_scroll = 1,
        hide_yaml_meta = 1,
      }
    end,
  },
}
