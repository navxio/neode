return {
  {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    lazy = false,
    config = function()
      require("no-neck-pain").setup({
        autocmds = {
          enableOnVimEnter = true,
          skipEnteringNoNeckPainBuffer = true,
        },
      })
    end,
  },
}
