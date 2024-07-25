return {
  {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    lazy = false,
    config = function()
      require("no-neck-pain").setup({
        autocmds = {
          enableOnVimEnter = true,
        },
        integrations = {
          NeoTree = {
            position = "right",
            reopen = true,
          },
          outline = {
            position = "right",
            reopen = true,
          },
        },
        bufferOptions = {
          enabled = false,
        },
      })
    end,
  },
}
