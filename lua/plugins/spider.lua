return {
  {
    "chrisgrieser/nvim-spider",
    lazy = true,
    keys = {
      { "w", "<cmd>lua require('spider').motion('w')<cr>", mode = { "n", "x", "o" } },
      { "e", "<cmd>lua require('spider').motion('e')<cr>", mode = { "n", "x", "o" } },
      { "b", "<cmd>lua require('spider').motion('b')<cr>", mode = { "n", "x", "o" } },
    },
  },
}
