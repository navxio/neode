-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.shell = "zsh"

--
vim.cmd("set nonumber")

-- set wrap
vim.cmd("set wrap")

-- setup vim global

vim.g.gitblame_message_template = "<author> • <summary> • <date>"
-- vim.g.gitblame_display_virtual_text = 0

-- gitsigns related
vim.wo.signcolumn = "yes"

-- nvim ufo things
vim.o.foldcolumn = "0"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- tabby
vim.g.tabby_keybinding_accept = "<c-e>"
