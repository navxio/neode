return {
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    event = { "CmdlineEnter", "BufReadPost" },
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- configuration goes here
      lang = "python",
    },
  },
}
