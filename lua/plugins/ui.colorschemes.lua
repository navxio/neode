return {
  { "dasupradyumna/midnight.nvim", lazy = false, priority = 1000 },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oldworld",
    },
  },
}
