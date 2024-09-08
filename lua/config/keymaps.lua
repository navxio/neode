-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local Util = require("lazyvim.util")
local Terminal = require("toggleterm.terminal").Terminal

local map = Util.safe_keymap_set
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "rounded",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "<Esc>", "<cmd>close<CR>", { noremap = true, silent = true })
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<c-g>", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<c-x>", ":bd<cr>")

_G._cycle_focus_terminal_buffers = function()
  -- get all the current buffers
  local bufs = vim.api.nvim_list_bufs()

  -- get the current buffer
  local current_buf = vim.api.nvim_get_current_buf()

  if vim.api.nvim_buf_get_option(current_buf, "buftype") == "terminal" then
    -- if it is a terminal buffer
    -- check if there are any more terminal buffers
    -- if there are then switch to the next one
    -- if there are not then do nothing
    local terminal_buffers = {}
    for _, buf in ipairs(bufs) do
      if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
        table.insert(terminal_buffers, buf)
      end
    end

    if #terminal_buffers > 1 then
      local current_index = vim.fn.index(terminal_buffers, current_buf) + 1
      local next_index = current_index + 1
      if next_index > #terminal_buffers then
        next_index = 1
      end
      vim.api.nvim_set_current_buf(terminal_buffers[next_index])
    else
      vim.notify("Already in the last terminal buffer", "info", { title = "LazyVim" })
    end
  else
    -- if it is not a terminal buffer
    -- check if there are any terminal buffers
    -- if there are then switch to the first one
    -- if there are not then create one and switch to it
    local terminal_buffers = {}
    for _, buf in ipairs(bufs) do
      if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
        table.insert(terminal_buffers, buf)
      end
    end
    if #terminal_buffers > 0 then
      vim.api.nvim_set_current_buf(terminal_buffers[1])
    else
      vim.cmd("terminal")
    end
  end
end

-- open aerial
vim.keymap.set("n", "<c-.>", "<cmd>Outline<cr>")

-- open new terminal tab with tt
vim.keymap.set("n", "tt", ":term<cr>")

-- NeoAI bindings
vim.keymap.set("n", "<leader>nn", ":NeoAIToggle<cr>")
vim.keymap.set("v", "<leader>nc", ":NeoAIContext<cr>")
vim.keymap.set("n", "<leader>ni", ":NeoAI<CR>")

-- remap ; to : and vice versa in normal mode
vim.keymap.set("n", ";", ":")

vim.keymap.set("n", "<c-t>", "<cmd>lua _cycle_focus_terminal_buffers()<CR>")

-- setup restnvim keybindings
vim.keymap.set("n", "<leader>xr", "<Plug>RestNvim")
vim.keymap.set("n", "<leader>xp", "<Plug>RestNvimPreview")
vim.keymap.set("n", "<leader>xl", "<Plug>RestNvimLast")

-- goto-preview
vim.keymap.set("n", "gp", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", { noremap = true })

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
vim.keymap.set({ "n", "v" }, "<leader>ox", "<cmd>OverseerRun<cr>", opts)
vim.keymap.set({ "n", "v" }, "<leader>ot", "<cmd>OverseerToggle<cr>", opts)

-- open config file
vim.keymap.set({ "n", "v" }, "<leader>rc", ":e $MYVIMRC<cr>", opts)

-- open keymap file
vim.keymap.set({ "n", "v" }, "<leader>kb", ":e ~/.config/nvim/lua/config/keymaps.lua<cr>", opts)
