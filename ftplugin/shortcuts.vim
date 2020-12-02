"mappings
map Q :q <CR>
map W :qall <CR>
map m :CocCommand explorer <CR>
map R :tabclose <CR>
map S :CocCommand snippets.editSnippets <CR>

autocmd BufWinEnter *.py map <c-b> :Black <CR>
autocmd BufWinEnter *.html,*.js,*.jsx map <c-b> :CocCommand prettier.formatFile <CR>

" mappings for normal mode
" moving to different window panes
nmap <c-h> <c-w>h
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l
"pasting from clipboard
nmap <c-p> o<esc>p

"compiling different languages
autocmd BufWinEnter *.py map T :!python3.8 % <CR>
autocmd BufWinEnter *.java map T :!java % <CR>
autocmd BufWinEnter *.js map T :!node % <CR>

" opens the development console for running react
map <C-n> :tabnew <bar> :term npm start <CR> <bar> :tabp <CR>

" handling snippets
imap <c-z> <Plug>(coc-snippets-expand)
let g:coc_snippet_next = '<c-x>'
let g:coc_snippet_prev = '<c-a>'

" nerdtree commenter
let g:NERDCommenterToggle = '<leader>c<space>'

" github shortcuts
nmap <c-g> :Git add . <bar> Git commit<CR>
