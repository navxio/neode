return {
  {
    "benfowler/telescope-luasnip.nvim",
    module = "telescope._extensions.luasnip",
    config = function()
      require("telescope").load_extension("luasnip")

      require("luasnip.loaders.from_vscode").lazy_load({
        paths = vim.fn.expand("~/.config/nvim/my_snippets"),
      })
    end,
  },
}
