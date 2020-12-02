set nu
set nowrap
set tabstop=4 "tabstop to 4 spaces
set shiftwidth=4 "shiftwidth to 4 spaces
set clipboard=unnamedplus
set scrolloff=10
set noswapfile
set nobackup
set history=1000
set encoding=UTF-8
set smartindent
set ignorecase
set nohlsearch

" helping with searching
nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>

autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endi

" color codes for popup menu
hi Pmenu ctermbg=darkgrey
hi PmenuSel ctermbg=lightblue

" close preview window when saving file
autocmd BufWrite *.* pclose
autocmd BufNewFile *.jsx :CocCommand template.template

" file for all shortcuts
source $HOME/.config/nvim/ftplugin/shortcuts.vim
