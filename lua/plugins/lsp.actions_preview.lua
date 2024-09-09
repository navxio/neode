return {
  {
    "aznhe21/actions-preview.nvim",
    event = "LspAttach",
    keys = { { "ga", "require('actions-preview').code_actions", desc = "List code actions" } },
    config = function()
      vim.keymap.set({ "v", "n" }, "ga", require("actions-preview").code_actions)
    end,
  },
}
