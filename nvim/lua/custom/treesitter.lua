local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  -- one of "all" or a list of languages
  ensure_installed = { "typescript", "javascript", "scss", "html", "css", "lua", "vim", "python", "markdown", "go", "graphql", "dockerfile", "json", "regex", "yaml", "http", "prisma", "lua" },
  highlight = {
    -- false will disable the whole extension
    enable = true,
  },
  autopairs = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})
