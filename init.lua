-- bootstrap lazy.nvim, LazyVim and your plugins
-- Example for configuring Neovim to load user-installed installed Lua rocks:
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"
-- activate correct virtualenv in poetry projects
local pyproject = vim.fn.findfile("pyproject.toml", ".;")
if pyproject ~= "" then
  local poetry_env = vim.fn.system("poetry env info --path"):gsub("%s+", "")
  vim.env.PATH = poetry_env .. "/bin:" .. vim.env.PATH
  vim.env.VIRTUAL_ENV = poetry_env
end
require("config.lazy")
