return {
  { "windwp/nvim-autopairs" },
  { "terrortylor/nvim-comment" },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true
  },
  { "nvim-tree/nvim-tree.lua" },
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
  {
    "lunarvim/darkplus.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd([[
        " set the colorscheme and highlight here
        colorscheme darkplus

        " make background transparent
        highlight Normal guibg=NONE ctermbg=NONE
        highlight NormalNC guibg=NONE ctermbg=NONE
        highlight NvimTreeNormal guibg=NONE ctermbg=NONE
        highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
        highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
        highlight GitSignsCurrentLineBlame guifg=#ffffff
        highlight PmenuSel guibg=gray ctermbg=gray
      ]])
    end,
  },

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

  -- Prisma vim parser
  -- Tree sitter is not working for some reason
  { "prisma/vim-prisma" }
}
