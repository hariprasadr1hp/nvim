" General Settings

" if vscode
if exists('g:vscode')
  source $HOME/.config/nvim/vscode/settings.vim
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nvim settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim

" Themes
source $HOME/.config/nvim/plug-config/onedark.vim
source $HOME/.config/nvim/plug-config/vim-airline.vim
source $HOME/.config/nvim/plug-config/vim-highlightedyank.vim

" Plugin Configuration
source $HOME/.config/nvim/plug-config/which-key.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/ranger.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
