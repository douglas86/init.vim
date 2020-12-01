set nocompatible
filetype plugin on

" generic settings
source $HOME/.config/nvim/ftplugin/generic.vim

call plug#begin('~/.config/nvim/plugged')

" Load plugins for the required settings
source ~/.config/nvim/ftplugin/plugins/plugins.vim

call plug#end()

" load settings for all generic plugins
source ~/.config/nvim/ftplugin/plugins/generic.vim
