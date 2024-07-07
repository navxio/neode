return {
  {
    "folke/styler.nvim",
    dependencies = {
      "rebelot/kanagawa.nvim",
    },
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
