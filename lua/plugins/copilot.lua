return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    enabled = false,
    config = function()
      require("copilot").setup({
        panel = {
          enabled = false,
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<c-e>",
          },
        },
        copilot_node_command = "/opt/homebrew/bin/node",
      })
    end,
  },
}
