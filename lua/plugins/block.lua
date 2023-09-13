return {
  {
    "HampusHauffman/block.nvim",
    event = "BufRead",
    config = function()
      require("block").setup({})
      vim.keymap.set("n", "<leader>bl", '<cmd>lua require("block").toggle()<cr>')
    end,
  },
}
