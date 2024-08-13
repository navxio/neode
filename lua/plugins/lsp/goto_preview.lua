return {
  {
    "rmagatti/goto-preview",
    event = "LspAttach",
    config = function()
      require("goto-preview").setup({})
    end,
  },
}
