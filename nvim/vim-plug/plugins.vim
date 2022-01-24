" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Plug 'nvim-lua/plenary.nvim'
  " Plug 'nvim-telescope/telescope.nvim'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  Plug 'metakirby5/codi.vim'
  Plug 'brooth/far.vim'
  Plug 'machakann/vim-highlightedyank'
  Plug 'nelstrom/vim-visual-star-search'
  Plug 'unblevable/quick-scope'
  Plug 'MattesGroeger/vim-bookmarks'
  Plug 'evanleck/vim-svelte', {'branch': 'main'}
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'leafgarland/typescript-vim'
  Plug 'crusoexia/vim-monokai'
  Plug 'tpope/vim-surround'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vimwiki/vimwiki'
  " Plug 'vim-airline/vim-airline'
  Plug 'kafelix496/vim-airline'
  Plug 'tpope/vim-commentary'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-fugitive'
  Plug 'yggdroot/indentline'
  Plug 'svermeulen/vim-subversive'
  Plug 'https://github.com/vim-scripts/ReplaceWithRegister.git'
  Plug 'voldikss/vim-floaterm'
  Plug 'jez/vim-superman'
  Plug 'jiangmiao/auto-pairs'
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'psliwka/vim-smoothie'

  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
