---@type UfoFoldVirtTextHandler
local foldVirtualTextHandler = function(virtText, lnum, endLnum, width, truncate)
  local newVirtText = {}
  local suffix = (" ⋯ %d "):format(endLnum - lnum)
  local sufWidth = vim.fn.strdisplaywidth(suffix)
  local targetWidth = width - sufWidth
  local curWidth = 0
  for _, chunk in ipairs(virtText) do
    local chunkText = chunk[1]
    local chunkWidth = vim.fn.strdisplaywidth(chunkText)
    if targetWidth > curWidth + chunkWidth then
      table.insert(newVirtText, chunk)
    else
      chunkText = truncate(chunkText, targetWidth - curWidth)
      local hlGroup = chunk[2]
      table.insert(newVirtText, { chunkText, hlGroup })
      chunkWidth = vim.fn.strdisplaywidth(chunkText)
      -- str width returned from truncate() may less than 2nd argument, need padding
      if curWidth + chunkWidth < targetWidth then
        suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
      end
      break
    end
    curWidth = curWidth + chunkWidth
  end
  table.insert(newVirtText, { suffix, "MoreMsg" })
  return newVirtText
end

return {
  -- Modify nvim-lspconfig for nvim-ufo
  {
    "neovim/nvim-lspconfig",
    opts = {
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
    },
  },

  -- Add nvim-ufo
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
      "luukvbaal/statuscol.nvim",
    },
    lazy = true,
    event = "BufReadPost",
    ---@class UfoConfig
    opts = {
      fold_virt_text_handler = foldVirtualTextHandler,
    },
    keys = {
      {
        ",R",
        function()
          require("ufo").openAllFolds()
        end,
        desc = "Open all folds",
      },
      {
        ",M",
        function()
          require("ufo").closeAllFolds()
        end,
        desc = "Close all folds",
      },
      {
        ",r",
        function()
          require("ufo").openFoldsExceptKinds()
        end,
        desc = "Open more",
      },
      {
        ",m",
        function()
          require("ufo").closeFoldsWith()
        end,
        desc = "Close more",
      },
      {
        ",P",
        function()
          require("ufo.preview"):peekFoldedLinesUnderCursor()
        end,
        desc = "Preview folds",
      },
      { ",c", "<Cmd>foldclose<CR>", mode = "n", desc = "Close current fold" },
      { ",o", "<Cmd>foldopen<CR>", mode = "n", desc = "Open current fold" },
    },
  },
}
