vim.cmd[[
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim

if exists('g:vscode')
  source $HOME/.config/nvim/keys/mappings_vscode.vim
else
  source $HOME/.config/nvim/keys/mappings.vim
endif

if !exists('g:vscode')
  source $HOME/.config/nvim/plug-config/bookmark.vim
  source $HOME/.config/nvim/plug-config/floaterm.vim
  source $HOME/.config/nvim/plug-config/undotree.vim
  source $HOME/.config/nvim/plug-config/airline.vim
  source $HOME/.config/nvim/plug-config/fzf.vim
  " "source $HOME/.config/nvim/plug-config/telescope.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/far.vim
  source $HOME/.config/nvim/plug-config/jsdoc.vim
  source $HOME/.config/nvim/plug-config/codi.vim
endif

source $HOME/.config/nvim/plug-config/highlightedyank.vim
source $HOME/.config/nvim/plug-config/subversive.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
]]
