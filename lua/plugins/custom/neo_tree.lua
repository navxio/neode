return {
  {
    "miversen33/netman.nvim",
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      sources = {
        "filesystem",
        "netman.ui.neo-tree",
      },
      source_selector = {
        sources = {
          { source = "remote" },
        },
      },
    },
  },
}
