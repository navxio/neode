return {
  {
    "sQVe/sort.nvim",
    event = "BufReadPost",
    config = function()
      require("sort").setup()
    end,
  },
}
