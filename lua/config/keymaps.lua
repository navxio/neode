-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- setup restnvim keybindings
vim.keymap.set("n", "<leader>xr", "<Plug>RestNvim")
vim.keymap.set("n", "<leader>xp", "<Plug>RestNvimPreview")
vim.keymap.set("n", "<leader>xl", "<Plug>RestNvimLast")

-- goto-preview
vim.keymap.set("n", "g-", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })

-- no neck pain single keybinding
vim.keymap.set({ "n", "v" }, "<Leader>np", "<Cmd>NoNeckPain<CR>", opts)

-- dial decrement
vim.keymap.set("n", "<C-u>", function()
  require("dial.map").manipulate("decrement", "normal")
end)

vim.keymap.set("n", "g<C-u>", function()
  require("dial.map").manipulate("decrement", "gnormal")
end)
vim.keymap.set("x", "<C-u>", function()
  require("dial.map").manipulate("decrement", "visual")
end)
vim.keymap.set("x", "g<C-u>", function()
  require("dial.map").manipulate("decrement", "gvisual")
end)
-- kill a buffer
vim.keymap.set("n", "<c-w>", function()
  vim.cmd.bd()
end)
vim.keymap.set({ "n", "v" }, "<c-x>", function()
  vim.cmd("OverseerRun")
end, opts)

--
vim.keymap.set({ "n", "v" }, "<c-t>", function()
  vim.cmd("OverseerToggle")
end, opts)

--- META
-- open config file
vim.keymap.set({ "n", "v" }, "<leader>rc", ":e $MYVIMRC<cr>", opts)

-- open keymap file
vim.keymap.set({ "n", "v" }, "<leader>kb", ":e ~/.config/nvim/lua/config/keymaps.lua<cr>", opts)
