-- this module loads all the plugins from the enclosed folders
local function get_plugin_files(folder)
  local files = vim.fn.globpath(folder, "**/*.lua", false, true)
  local plugins = {}
  for _, file in ipairs(files) do
    local module_path = file:match("lua/(.*)%.lua$")
    if module_path then
      local success, plugin_spec = pcall(require, module_path:gsub("/", "."))
      if success and type(plugin_spec) == "table" then
        for _, plugin in ipairs(plugin_spec) do
          table.insert(plugins, plugin)
        end
      else
        print("Failed to load " .. module_path)
      end
    end
  end
  return plugins
end

local plugin_folder = vim.fn.stdpath("config") .. "/lua/plugins"
local all_plugins = get_plugin_files(plugin_folder)

return all_plugins
