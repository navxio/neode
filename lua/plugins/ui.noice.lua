return {
  {
    "folke/noice.nvim",
    event = "VimEnter",
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
