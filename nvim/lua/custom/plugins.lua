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

	use({
    "wbthomason/packer.nvim",
    commit = "6afb674",
  })
	use({
    "windwp/nvim-autopairs",
    commit = "5fe2441",
  })
	use({
    "numToStr/Comment.nvim",
    commit = "30d23aa",
  })
  use({
    "JoosepAlviste/nvim-ts-context-commentstring",
    commit = "4d3a68c",
  })
	use({
    "kyazdani42/nvim-web-devicons",
    commit = "2d02a56",
  })
	use({
    "kyazdani42/nvim-tree.lua",
    commit = "fb8735e",
  })
	use({
    "voldikss/vim-floaterm",
    commit = "d3ac089",
  })
	use({
    "lewis6991/impatient.nvim",
    commit = "b842e16",
  })
	use({
    "folke/which-key.nvim",
    commit = "66e69ba",
  })
	use({
    "machakann/vim-highlightedyank",
    commit = "f9db473",
  })
  use({
    "vimwiki/vimwiki",
    commit = "63af6e7",
  })
  use({
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    commit = "02cc387",
  })

  -- Search and replace
	use({
    "nvim-lua/plenary.nvim",
    commit = "4b66054",
  })
	use({
    "windwp/nvim-spectre",
    commit = "2b2dd83",
  })

  -- Vim extra combinations
  use({
    "tpope/vim-surround",
    commit = "bf3480d",
  })
  use({
    "https://github.com/vim-scripts/ReplaceWithRegister.git",
    commit = "832efc2",
  })
  use({
    "svermeulen/vim-subversive",
    commit = "6286cda",
  })

  -- Test (ex jest)
  use({
    "vim-test/vim-test",
    commit = "b2b7723",
  })

	-- Tab style and icon
	use({
    "kafelix496/vim-airline",
    commit = "363d43a",
  })
  use({
    "ryanoasis/vim-devicons",
    commit = "a225865",
  })

	-- Colorschemes
	use({
    "folke/tokyonight.nvim",
    commit = "3e79e04",
  })
	use({
    "lunarvim/darkplus.nvim",
    commit = "aa1f0a5",
  })

	-- cmp plugins
	use({
    "hrsh7th/nvim-cmp",
    commit = "913eb85",
  })
	use({
    "hrsh7th/cmp-buffer",
    commit = "3022dbc",
  })
	use({
    "hrsh7th/cmp-path",
    commit = "447c87c",
  })
	use({
    "saadparwaiz1/cmp_luasnip",
    commit = "a9de941",
  })
	use({
    "hrsh7th/cmp-nvim-lsp",
    commit = "affe808",
  })
	use({
    "hrsh7th/cmp-nvim-lua",
    commit = "d276254",
  })

  -- snippets
	use({
    "L3MON4D3/LuaSnip",
    commit = "4dc7012",
  })
	-- use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

	-- LSP
	use({
    "neovim/nvim-lspconfig",
    commit = "51775b1",
  })
	use({
    "williamboman/nvim-lsp-installer",
    commit = "ae913cb",
  })
  use({
    "prettier/vim-prettier",
    commit = "5e6cca2",
  })
  use({
    "mfussenegger/nvim-lint",
    commit = "b551a72",
  })
  use({
    "ray-x/lsp_signature.nvim",
    commit = "e65a638",
  })

	-- fzf plugins
	use({
    "junegunn/fzf",
    commit = "b5efc68",
  })
	use({
    "junegunn/fzf.vim",
    commit = "ecbf9cd",
  })

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    commit = "7ddc2b54",
	})

	-- Copilot
	use({ "github/copilot.vim" })

	-- Git
	use({
    "lewis6991/gitsigns.nvim",
    commit = "231fa92",
  })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
