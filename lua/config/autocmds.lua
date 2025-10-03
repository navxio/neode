-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

--
-- Start terminal in insert mode
local api = vim.api

-- convert cursor back to line after exiting neovim
vim.cmd("autocmd VimLeave * set guicursor=a:hor10-blinkon0")

-- ephemeral windows close with q
api.nvim_create_autocmd("FileType", {
  pattern = { "aerial-nav", "help", "startuptime", "qf", "lspinfo" },
  callback = function()
    vim.keymap.set("n", "<Esc>", ":close<CR>", { buffer = true, silent = true })
  end,
})
api.nvim_create_autocmd("FileType", {
  pattern = "man",
  callback = function()
    vim.keymap.set("n", "<Esc>", ":quit<CR>", { buffer = true, silent = true })
  end,
})

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    -- map <Esc> in terminal mode of this buffer to exit to normal
    vim.api.nvim_buf_set_keymap(0, "t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
  end,
})

-- Disable autoformat for sh files
api.nvim_create_autocmd("FileType", {
  pattern = { "sh" },
  callback = function()
    vim.b.autoformat = false
  end,
})
