vim.api.nvim_create_user_command("NvimCopyDiagnostics", function()
	require("nvim-copy-diagnostics").setup()
end, {})
