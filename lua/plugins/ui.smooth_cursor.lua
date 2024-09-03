return {
  {
    "gen740/SmoothCursor.nvim",
    event = "InsertEnter",
    config = function()
      require("smoothcursor").setup({
        type = "matrix",
      })
    end,
  },
}
