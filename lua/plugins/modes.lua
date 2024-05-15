return {
  {
    "mvllow/modes.nvim",
    version = "v0.2.0",
    event = "VeryLazy",
    config = function()
      require("modes").setup()
    end,
  },
}
