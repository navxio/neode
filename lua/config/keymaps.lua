-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- open filesystem to the right
-- vim.keymap.set("n", "<c-n>", ":Neotree filesystem toggle reveal right<cr>")
vim.keymap.set("n", "X", "<cmd>lua vim.api.nvim_buf_delete(vim.api.nvim_get_current_buf(), {force = true})<cr>")

-- luasnip list all snippets keybindings
_G._ivy_snippets = function()
  require("telescope").extensions.luasnip.luasnip(require("telescope.themes").get_ivy())
end

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
vim.keymap.set("n", "<c-.>", "<cmd>AerialNavToggle<cr>")

-- show all available snippets
vim.keymap.set("n", "<leader>se", "<cmd>lua _ivy_snippets()<cr>")

-- open terminal with tt
vim.keymap.set("n", "tt", ":term<cr>")

-- open floatterm
vim.keymap.set("n", "<c-`>", ":FloatermToggle<cr>")

-- NeoAI bindings
vim.keymap.set("n", "<leader>nn", ":NeoAIToggle<cr>")
vim.keymap.set("v", "<leader>nc", ":NeoAIContext<cr>")
vim.keymap.set("n", "<leader>ni", ":NeoAI<CR>")

-- remap ; to : and vice versa in normal mode
vim.keymap.set("n", ";", ":")

vim.keymap.set("n", "<c-t>", "<cmd>lua _cycle_focus_terminal_buffers()<CR>")
