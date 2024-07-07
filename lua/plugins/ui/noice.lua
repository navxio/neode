return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      routes = {
        {
          view = "notify",
          filter = { event = "msg_showmode" },
        },
      },
    },
  },
}
