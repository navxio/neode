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
vim.keymap.set("n", "<leader>.", function()
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

-- no neck pain single keybinding
vim.keymap.set({ "n", "v" }, "<Leader>np", "<Cmd>NoNeckPain<CR>", opts)

-- gen nvim mappings
vim.keymap.set({ "n", "v" }, "<Leader>]", ":Gen<CR>", opts)

-- overseer commands
-- override old c-o to c-a
vim.api.nvim_set_keymap("n", "<c-a>", "<c-o>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<c-o>", function()
  vim.cmd("OverseerRun")
end, opts)

--
vim.keymap.set({ "n", "v" }, "<c-t>", function()
  vim.cmd("OverseerToggle")
end, opts)

-- no neck pain
vim.keymap.set({ "n", "v" }, "<c-m>", function()
  vim.cmd("NoNeckPain")
end)

--- META
-- open config file
vim.keymap.set({ "n", "v" }, "<leader>rc", ":e $MYVIMRC<cr>", opts)

-- open keymap file
vim.keymap.set({ "n", "v" }, "<leader>kb", ":e ~/.config/nvim/lua/config/keymaps.lua<cr>", opts)
