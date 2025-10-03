-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.shell = "zsh"

-- set wrap
vim.wo.wrap = true

-- setup vim global

vim.g.gitblame_message_template = "<author> • <summary> • <date>"
-- vim.g.gitblame_display_virtual_text = 0

-- gitsigns related
vim.wo.signcolumn = "yes"

-- fold settings
vim.o.foldcolumn = "0"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- tabby
vim.g.tabby_keybinding_accept = "<c-e>"

-- setup pyright for neovim
vim.g.lazyvim_python_lsp = "pyright"

-- disable relative number
vim.opt.relativenumber = false

-- guicursor
vim.o.guicursor = table.concat({
  "c:ver20-blinkon0",
  "n-v:block",
  "i-ci-ve:ver25",
  "r-cr:hor20",
  "o:hor50",
  "t:hor10-blinkon0",
}, ",")
