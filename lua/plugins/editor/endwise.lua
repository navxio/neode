return {
  {
    "RRethy/nvim-treesitter-endwise",
    event = "BufEnter",
    config = function()
      require("nvim-treesitter.configs").setup({
        endwise = {
          enable = true,
        },
      })
    end,
  },
}
