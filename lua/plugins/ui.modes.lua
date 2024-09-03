return {
  {
    "mvllow/modes.nvim",
    version = "v0.2.0",
    event = "BufReadPost",
    config = function()
      require("modes").setup()
    end,
  },
}
