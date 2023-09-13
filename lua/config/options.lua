-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.shell = "zsh"

-- word wrap
-- vim.opt.textwidth = 80
-- vim.opt.wrapmargin = 2
-- vim.opt.wrap = true
--
vim.cmd("set nonumber")

-- setup vim global

vim.g.gitblame_message_template = "<summary> • <date> • <author>"
