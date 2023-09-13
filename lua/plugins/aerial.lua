return {
  {
    "stevearc/aerial.nvim",
    event = "BufRead",
    opts = {
      layout = {
        placement = "window",
      },
      manage_folds = true,
      link_tree_to_folds = true,
      link_folds_to_tree = true,
    },
    config = function()
      require("aerial").setup({})
    end,
  },
}
