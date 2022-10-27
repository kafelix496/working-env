local lsp_installer_status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not lsp_installer_status_ok then
	return
end

local servers = { "tsserver", "cssls", "html", "jsonls", "pyright", "yamlls", "tailwindcss", "dockerls", "eslint", "angularls", "sumneko_lua" }

lsp_installer.setup({
	ensure_installed = servers,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("custom.lsp.handlers").on_attach,
		capabilities = require("custom.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "custom.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end
