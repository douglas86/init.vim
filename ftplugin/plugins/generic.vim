" coc.nvim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col =  col('.') - 1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

let g:coc_start_at_startup = 1
let g:coc_global_extensions = [
			\ 'coc-json',
			\ 'coc-css',
			\ 'coc-eslint',
			\ 'coc-tsserver',
			\ 'coc-emmet',
			\ 'coc-tag',
			\ 'coc-lists',
			\ 'coc-syntax',
			\ 'coc-yaml',
			\ 'coc-html',
			\ 'coc-snippet',
			\ 'coc-git',
			\ 'coc-prettier',
]

" vim-auto-save
let g:auto_save = 1 " enable AutoSave on Vim startup

" auto-pairs
let g:AutoPairsFlyMode = 0
" let g:AutoPairsShortcutBackInsert = '<M-b>'

" nerdcommenter
let g:NERDSpaceDelims = 1 "Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 "Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' "Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1 "Set a language to use its alternate delimiters by default
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } } "Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1 "Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 "Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1 "Enable NERDCommenterToggle to check all selected lines is commented or not 
" let g:NERDCommenterToggle = '<leader>c<space>'

" vim-airline & vim-airline-theme
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'

" nerd-fonts

" vim-workspace
let g:workspace_session_name = '.session.vim'

" vim-signify
set updatetime=100 "default updatetime 4000ms is not good for async update

" close-buffers
" timer to close all hidden buffers every 5 sec
let timer = timer_start(5000, 'CloseHiddenBuffers', {'repeat':-1})
function! CloseHiddenBuffers(timer)
	execute 'Bdelete hidden'
endfunction

" vim-code-dark
let g:airline_theme = 'codedark'
autocmd VimEnter * colorscheme codedark

" vimwiki
" refer to the md plugins file for these settings
let g:vimwiki_list = [{'path':'~/.config/nvim/vimwiki', 'syntax':'default', 'ext':'.md'}]
let g:vimwiki_hl_headers = 1

command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.md VimwikiDiaryGenerateLinks
augroup end

" calendar-vim
" refer to the md plugins file for these settings
