return {
  {
    "miversen33/netman.nvim",
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      popup_border_style = "rounded",
      sources = {
        "filesystem",
        "netman.ui.neo-tree",
      },
      source_selector = {
        sources = {
          { source = "remote" },
        },
      },
      window = {
        position = "float",
        width = 80,
      },
    },
  },
}
