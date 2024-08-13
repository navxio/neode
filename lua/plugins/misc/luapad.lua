return {
  {
    "rafcamlet/nvim-luapad",
    event = "CmdlineEnter",
    config = function()
      require("luapad").setup({})
    end,
  },
}
