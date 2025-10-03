return {
  { "dasupradyumna/midnight.nvim", lazy = false, priority = 1000 },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
      require("oldworld").setup({
        variant = "oled",
        styles = {
          booleans = { italic = true, bold = true },
          comments = { italic = true },
        },
        integrations = {
          hop = true,
          telescope = false,
        },
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
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
      colorscheme = "solarized",
    },
  },
}
