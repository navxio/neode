return {
  "nvim-lualine/lualine.nvim",
  event = "BufReadPost",
  opts = {
    theme = "solarized_dark",
    icons_enabled = true,
    options = {
      component_separators = "",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_x = { "overseer" },
    },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
  },
}
