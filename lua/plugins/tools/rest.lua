return {
  -- plugins/rest.lua
  {
    "rest-nvim/rest.nvim",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    commit = "8b62563",
    config = function()
      require("rest-nvim").setup({})
    end,
  },
}
