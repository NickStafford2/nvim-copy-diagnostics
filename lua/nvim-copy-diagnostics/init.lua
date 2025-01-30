-- init.lua
local M = {}

function M.setup()
	require("myplugin.diagnostics").setup()
end

return M
