_G.cycle_focus_terminal_buffers = function()
  -- get all the current buffers
  local bufs = vim.api.nvim_list_bufs()

  -- get the current buffer
  local current_buf = vim.api.nvim_get_current_buf()

  -- if it is a terminal buffer
  -- check if there are any more terminal buffers
  -- if there are then switch to the next one
  -- if there are not then do nothing
  if vim.api.nvim_buf_get_option(current_buf, "buftype") == "terminal" then
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
