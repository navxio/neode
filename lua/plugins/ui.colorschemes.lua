return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
  },
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    config = function()
      require("solarized").setup({})
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
