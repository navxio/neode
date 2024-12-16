return {
  {
    "David-Kunz/gen.nvim",
    opts = {
      model = "dolphin-mixtral",
    },
    keys = {
      { "<leader>]", desc = "GenAI" },
    },
    cmd = "Gen",
  },
  {
    "TabbyML/vim-tabby",
    lazy = false,
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    init = function()
      vim.g.tabby_agent_start_command = { "tabby-agent", "--stdio" }
      vim.g.tabby_inline_completion_trigger = "auto"
    end,
  },
}
