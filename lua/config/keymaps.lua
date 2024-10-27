-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")

local map = Util.safe_keymap_set

-- override lazygit keybindings
map("n", "<c-g>", function()
  Util.terminal({ "lazygit" }, { cwd = Util.root(), esc_esc = true, ctrl_hjkl = false })
end, { desc = "Lazygit (root dir)" })
map("n", "<c-G>", function()
  Util.terminal({ "lazygit" }, { esc_esc = false, ctrl_hjkl = false })
end, { desc = "Lazygit (cwd)" })

vim.keymap.set("n", "<c-x>", function()
  vim.cmd.bd()
end)

-- open aerial
vim.keymap.set("n", "<c-.>", function()
  vim.cmd("Outline")
end)

-- open new terminal tab with tt
vim.keymap.set("n", "tt", ":term<cr>")

-- NeoAI bindings
vim.keymap.set("n", "<leader>nn", ":NeoAIToggle<cr>")
vim.keymap.set("v", "<leader>nc", ":NeoAIContext<cr>")
vim.keymap.set("n", "<leader>ni", ":NeoAI<CR>")

-- remap ; to : and vice versa in normal mode
vim.keymap.set("n", ";", ":")

-- setup restnvim keybindings
vim.keymap.set("n", "<leader>xr", "<Plug>RestNvim")
vim.keymap.set("n", "<leader>xp", "<Plug>RestNvimPreview")
vim.keymap.set("n", "<leader>xl", "<Plug>RestNvimLast")

-- goto-preview
vim.keymap.set("n", "gp", function()
  require("goto-preview").goto_preview_definition()
end)

-- off a random reddit thread
vim.keymap.set("i", "<c-bs>", "<esc>cvb", {})
-- comment-box related keybindings

local opts = { noremap = true, silent = true }
vim.keymap.set({ "n", "v" }, "<Leader>db", "<Cmd>CBccbox<CR>", opts)
-- Named parts
vim.keymap.set({ "n", "v" }, "<Leader>dt", "<Cmd>CBllline<CR>", opts)
-- Simple line
--
vim.keymap.set("n", "<Leader>dl", "<Cmd>CBline<CR>", opts)
-- keymap("i", "<M-l>", "<Cmd>CBline<CR>", opts) -- To use in Insert Mode
-- Marked comments
vim.keymap.set({ "n", "v" }, "<Leader>dm", "<Cmd>CBllbox14<CR>", opts)
-- Removing a box is simple enough with the command (CBd), but if you
-- use it a lot:
vim.keymap.set({ "n", "v" }, "<Leader>dd", "<Cmd>CBd<CR>", opts)

-- no neck pain single keybinding
vim.keymap.set({ "n", "v" }, "<Leader>np", "<Cmd>NoNeckPain<CR>", opts)

-- gen nvim mappings
vim.keymap.set({ "n", "v" }, "<Leader>]", ":Gen<CR>", opts)

-- overseer commands
-- override old c-o to c-a
vim.keymap.set("n", "<C-a>", function()
  vim.cmd("normal! <C-o>")
end)
--
vim.keymap.set({ "n", "v" }, "<c-o>", function()
  vim.cmd("OverseerRun")
end, opts)
vim.keymap.set({ "n", "v" }, "<leader>ot", "<cmd>OverseerToggle<cr>", opts)

-- open config file
vim.keymap.set({ "n", "v" }, "<leader>rc", ":e $MYVIMRC<cr>", opts)

-- open keymap file
vim.keymap.set({ "n", "v" }, "<leader>kb", ":e ~/.config/nvim/lua/config/keymaps.lua<cr>", opts)
