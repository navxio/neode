-- treesitter to enable incremental selection with <enter>
return {
  {
    "nvim-treesitter/nvim-treesitter",
    keys = {
      { "<cr>", desc = "Increment selection" },
      { "<bs>", desc = "Decrement selection", mode = "x" },
    },
    opts = {
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<cr>",
          node_incremental = "<cr>",
          node_decremental = "<bs>",
          scope_incremental = false,
        },
      },
    },
  },
}
