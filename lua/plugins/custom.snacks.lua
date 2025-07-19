return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          layout = { layout = { position = "right" } },
          win = {
            list = {
              keys = {
                ["<BS>"] = "explorer_up",
                ["l"] = "confirm",
                ["h"] = "explorer_close", -- close directory
                ["a"] = "explorer_add",
                ["d"] = "explorer_del",
                ["r"] = "explorer_rename",
                ["c"] = "explorer_copy",
                ["x"] = "explorer_move",
                ["o"] = "explorer_open", -- open with system application
                ["P"] = "toggle_preview",
                ["y"] = { "explorer_yank", mode = { "n", "x" } },
                ["p"] = "explorer_paste",
                ["u"] = "explorer_update",
                ["<c-c>"] = "tcd",
                ["<leader>/"] = "picker_grep",
                ["<c-t>"] = "terminal",
                ["."] = "explorer_focus",
                ["I"] = "toggle_ignored",
                ["H"] = "toggle_hidden",
                ["Z"] = "explorer_close_all",
                ["]g"] = "explorer_git_next",
                ["[g"] = "explorer_git_prev",
                ["]d"] = "explorer_diagnostic_next",
                ["[d"] = "explorer_diagnostic_prev",
                ["]w"] = "explorer_warn_next",
                ["[w"] = "explorer_warn_prev",
                ["]e"] = "explorer_error_next",
                ["[e"] = "explorer_error_prev",
              },
            },
          },
        },
      },
    },
  },
}
