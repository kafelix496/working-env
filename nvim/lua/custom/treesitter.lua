local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = { "typescript", "javascript", "scss", "html", "css", "lua", "vim", "python", "markdown", "go", "graphql", "dockerfile", "json", "regex", "yaml", "http", "prisma" }, -- one of "all" or a list of languages
	highlight = {
		enable = true, -- false will disable the whole extension
	},
	autopairs = {
		enable = true,
	},
	indent = {
    enable = true,
  },
})
