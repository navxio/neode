return {
  { "dasupradyumna/midnight.nvim", lazy = false, priority = 1000 },
  {
    "wtfox/jellybeans.nvim",
    priority = 1000,
    config = function()
      require("jellybeans").setup()
    end,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        italic_comments = true,
        transparent = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "jellybeans",
    },
  },
}
