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

-- set wrap
vim.cmd("set wrap")

-- setup vim global

vim.g.gitblame_message_template = "<author> • <summary> • <date>"
-- vim.g.gitblame_display_virtual_text = 0

-- nvim ufo things
vim.o.foldcolumn = "auto"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
