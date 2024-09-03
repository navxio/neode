return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    event = "BufReadPre",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("obsidian").setup({
        workspaces = {
          {
            name = "default",
            path = "/Users/nav/universal-0/",
          },
        },
      })
    end,
  },
}
