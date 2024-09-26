return {
  {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    lazy = false,
    config = function()
      require("no-neck-pain").setup({
        width = 150,
        autocmds = {
          enableOnVimEnter = false,
          skipEnteringNoNeckPainBuffer = true,
        },
      })
    end,
  },
}
