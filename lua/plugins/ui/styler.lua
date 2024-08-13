return {
  {
    "folke/styler.nvim",
    dependencies = {
      "rebelot/kanagawa.nvim",
    },
    event = "BufReadPost",
    config = function()
      require("kanagawa").setup({})
      require("styler").setup({
        themes = {
          markdown = { colorscheme = "kanagawa" },
          help = { colorscheme = "catppuccin-mocha", background = "dark" },
        },
      })
    end,
  },
}
