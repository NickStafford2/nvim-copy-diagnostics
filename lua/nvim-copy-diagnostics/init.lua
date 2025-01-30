-- myplugin/diagnostics.lua

---@class Config
local config = {}

---@class CopyModule
local M = {}

---@type Config
M.config = config

M.setup = function(args)
	vim.keymap.set("n", "<Leader>cy", function()
		local diagnostics = vim.diagnostic.get(0, {})
		if not diagnostics or #diagnostics == 0 then
			print("No Diagnostic under cursor.")
			return
		end

		-- Extract the diagnostic messages
		local diagnostic_messages = {}
		for _, diagnostic in ipairs(diagnostics) do
			table.insert(diagnostic_messages, diagnostic.message)
		end

		-- Join the messages into a single string
		local diagnostic_text = table.concat(diagnostic_messages, "\n")
		-- Copy to system clipboard
		vim.fn.setreg("+", diagnostic_text)
		print("Copied diagnostics to clipboard.")
	end)
end

return M
