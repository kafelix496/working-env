local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)

	use("wbthomason/packer.nvim")
	use("windwp/nvim-autopairs")
	use("numToStr/Comment.nvim")
  use("JoosepAlviste/nvim-ts-context-commentstring")
	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")
	use("voldikss/vim-floaterm")
	use("lewis6991/impatient.nvim")
	use("folke/which-key.nvim")
	use("machakann/vim-highlightedyank")
  use("vimwiki/vimwiki")
  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
  })

  -- Search and replace
	use("nvim-lua/plenary.nvim")
	use("windwp/nvim-spectre")

  -- Vim extra combinations
  use("tpope/vim-surround")
  use("https://github.com/vim-scripts/ReplaceWithRegister.git")
  use("svermeulen/vim-subversive")

  -- Test (ex jest)
  use("vim-test/vim-test")

	-- Tab style and icon
	use("kafelix496/vim-airline")
  use("ryanoasis/vim-devicons")

	-- Colorschemes
	use("folke/tokyonight.nvim")
	use("lunarvim/darkplus.nvim")

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("saadparwaiz1/cmp_luasnip") -- snippet completions
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")

  -- snippets
	use("L3MON4D3/LuaSnip") --snippet engine
	-- use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/nvim-lsp-installer") -- simple to use language server installer
  use("prettier/vim-prettier") -- formatter
  use("mfussenegger/nvim-lint") -- lint
  use("ray-x/lsp_signature.nvim")

	-- fzf plugins
	--[[ use("nvim-telescope/telescope.nvim") ]]
	use("junegunn/fzf")
	use("junegunn/fzf.vim")


	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
		commit = "37b9a2971f749ab6d5ac9c8792f6e133fed027aa",
	})

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
