vim.api.nvim_create_user_command("NvimCopyDiagnostics", function()
	require("copy-diagnostics.module").setup()
end, {})
vim.api.nvim_create_user_command("CopyDiagnostics", require("plugin_name").hello, {})
