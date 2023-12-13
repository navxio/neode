return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<c-`>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    },
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-`>]],
        direction = "float",
        on_create = function()
          -- source .venv/bin/activate
          vim.cmd("TermExec cmd='source .venv/bin/activate'")
        end,
        start_in_insert = true,
        insert_mappings = true,
        close_on_exit = true,
        float_opts = {
          border = "curved",
        },
      })
    end,
  },
}
