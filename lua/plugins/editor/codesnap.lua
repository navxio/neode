return {
  {
    "mistricky/codesnap.nvim",
    build = "make",
    event = "BufReadPost",
    config = function()
      require("codesnap").setup({
        has_breadcrumbs = true,
        has_line_number = true,
        bg_padding = 0,
        watermark = "",
        mac_window_bar = false,
      })
    end,
  },
}
