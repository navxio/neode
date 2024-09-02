return {
  {
    "aznhe21/actions-preview.nvim",
    event = "LspAttach",
    config = function()
      vim.keymap.set({ "v", "n" }, "g?", require("actions-preview").code_actions)
    end,
  },
}
