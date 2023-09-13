return {
  {
    "willothy/flatten.nvim",
    config = true,
    -- or pass configuration with
    -- opts = {  }
    -- Ensure that it runs first to minimize delay when opening file from terminal
    lazy = false,
    priority = 1001,
  },
  {
    "akinsho/toggleterm.nvim",
  },
  {
    "voldikss/vim-floaterm",
  },
}
