return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
    ft = { "css", "html", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
    lazy = true,
  },
}
