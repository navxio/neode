return {
  {
    "miversen33/netman.nvim",
    config = function()
      require("netman")
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    event = "VeryLazy",
    opts = {
      filesystem = {
        commands = {
          copy_file_name = function(state)
            local node = state.tree:get_node()
            vim.fn.setreg("*", node.name, "c")
          end,
        },
        window = {
          mappings = {
            ["Y"] = "copy_file_name",
          },
        },
      },
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
