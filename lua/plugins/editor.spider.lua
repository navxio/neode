-- enhanced vim motion commands across camel, kebab, snake and space cases
return {
  {
    "chrisgrieser/nvim-spider",

    event = "ModeChanged",
    keys = {
      { "w", "<cmd>lua require('spider').motion('w')<cr>", mode = { "n", "x", "o" } },
      { "e", "<cmd>lua require('spider').motion('e')<cr>", mode = { "n", "x", "o" } },
      { "b", "<cmd>lua require('spider').motion('b')<cr>", mode = { "n", "x", "o" } },
    },
  },
}
