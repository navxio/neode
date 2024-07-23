return {
  {
    "benfowler/telescope-luasnip.nvim",
    module = "telescope._extensions.luasnip",
    config = function()
      require("telescope").load_extension("luasnip")
    end,
  },
}
