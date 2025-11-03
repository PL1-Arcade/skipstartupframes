-- Define the plugin directory
local plugin_directory = manager.plugins['skipstartupframes'].directory

-- Load the plugin metadata
local json = require('json')
local ssf = json.parse(io.open(plugin_directory .. '/plugin.json'):read('*a')).plugin

-- Set the plugin directory
ssf.plugin_directory = plugin_directory

-- Print function
ssf.print = function(message)
  emu.print_verbose("Skip Startup Frames Plugin: " .. tostring(message))
end

return ssf
