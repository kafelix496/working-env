-- remove "html" because it's conflicted with "angularls"
local servers = {
  "tsserver",
  "cssls",
  "jsonls",
  "pyright",
  "tailwindcss",
  "dockerls",
  "eslint",
  "angularls",
  "gopls",
  "prismals",
  "lua_ls"
}

local settings = {
  ui = {
    border = "rounded",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup {
  ensure_installed = servers,
  automatic_installation = true,
}

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
