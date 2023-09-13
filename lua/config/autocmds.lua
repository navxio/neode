-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- my autocmds copied from previous config
--
--
-- automatically setup the filetype to htmldjango for .djhtml files
--
-- vim.cmd("autocmd BufRead,BufNewFile *.djhtml set filetype=htmldjango")
--
-- Start terminal in insert mode
local api = vim.api
local termGrp = api.nvim_create_augroup("terminal", { clear = true })

api.nvim_create_autocmd("TermOpen", {
  command = "startinsert",
  group = termGrp,
})

api.nvim_create_autocmd("TermClose", {
  command = 'call feedkeys("i")',
  group = termGrp,
})

-- convert cursor back to line after exiting neovim
vim.cmd("autocmd VimLeave * set guicursor=a:hor10-blinkon0")

-- ephemeral windows close with q
api.nvim_create_autocmd("FileType", {
  pattern = { "aerial-nav", "help", "startuptime", "qf", "lspinfo" },
  command = [[nnoremap <buffer><silent> q :close<CR>]],
})
api.nvim_create_autocmd("FileType", { pattern = "man", command = [[nnoremap <buffer><silent> q :quit<CR>]] })

--

local lineNumGrp = api.nvim_create_augroup("lineNum", { clear = true })
--#region
--
api.nvim_create_autocmd("WinEnter", {
  pattern = "*",
  command = "setlocal relativenumber",
  group = lineNumGrp,
})

api.nvim_create_autocmd("WinEnter", {
  pattern = "*",
  command = "setlocal number",
  group = lineNumGrp,
})

api.nvim_create_autocmd("WinLeave", {
  pattern = "*",
  command = "setlocal norelativenumber",
  group = lineNumGrp,
})

api.nvim_create_autocmd("WinLeave", {
  pattern = "*",
  command = "setlocal nonumber",
  group = lineNumGrp,
})

-- Disable autoformat for sh files
api.nvim_create_autocmd("FileType", {
  pattern = { "sh" },
  callback = function()
    vim.b.autoformat = false
  end,
})
