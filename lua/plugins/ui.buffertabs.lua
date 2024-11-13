return {
  {
    "tomiis4/BufferTabs.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional
    },
    lazy = false,
    config = function()
      require("buffertabs").setup({
        -- config
      })
    end,
  },
}
