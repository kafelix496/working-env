return {
  { "windwp/nvim-autopairs" },
  { "terrortylor/nvim-comment" },
  { "kyazdani42/nvim-web-devicons" },
  { "kyazdani42/nvim-tree.lua" },
  { "voldikss/vim-floaterm" },
  { "lewis6991/impatient.nvim" },
  { "folke/which-key.nvim" },
  { "machakann/vim-highlightedyank" },
  { "vimwiki/vimwiki" },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install"
  },

  -- Search and replace
  { "nvim-lua/plenary.nvim" },
  { "windwp/nvim-spectre" },

  -- Vim extra combinations
  { "tpope/vim-surround" },
  { "https://github.com/vim-scripts/ReplaceWithRegister.git" },
  { "svermeulen/vim-subversive" },

  -- Test (ex jest)
  { "vim-test/vim-test" },

  -- Tab style and icon
  { "kafelix496/vim-airline" },
  { "ryanoasis/vim-devicons" },

  -- Colorschemes
  { "lunarvim/darkplus.nvim" },

  -- cmp plugins
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "saadparwaiz1/cmp_luasnip" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lua" },

  -- snippets
  { "L3MON4D3/LuaSnip" },
  -- use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

  -- LSP
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "nvimtools/none-ls.nvim" }, -- for formatters and linters
  { "ray-x/lsp_signature.nvim" },

  -- fzf plugins
  { "junegunn/fzf" },
  { "junegunn/fzf.vim" },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },

  -- Bookmark
  { "MattesGroeger/vim-bookmarks" },

  -- Copilot
  { "github/copilot.vim" },

  -- Git
  { "lewis6991/gitsigns.nvim" },
}
