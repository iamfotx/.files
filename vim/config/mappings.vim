""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General

" Use " " (space) as <Leader>
let mapleader = " "

" Use %% on the command line to expand to the dir of the current file
cnoremap <Expr> %% expand("%:h") . "/"

" copy current file's path
nmap rcpc:let @+ = expand("%") <cr>
nmap <leader>cp :let @+ = expand("%:p") <cr>

" source ~/.vimrc
nnoremap <leader>sv :so ~/.vimrc<CR>

" bind <leader>k to grep word under cursor
nnoremap <leader>k :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching

" Clear highlighting for the current search with <Leader>/
" Adapted from https://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting/657484#657484
nnoremap <Leader>/ :let @/ = ""<Return>

" map <leader><CR> to toggle search highlighting
nnoremap <leader><CR> :set hlsearch!<CR>

" PLUGIN(S)

" ACK
" Open :Ack with <Leader>a
nnoremap <Leader>a :Ack<Space>
vnoremap <Leader>a :Ack<Space>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Wrapping

" Toggle wrapping with <Leader>w
noremap <Leader>w :set wrap!<Return>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line numbers

" Toggle line numbers with <Leader>n
noremap <Leader>n :set number!<Return>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy/paste

" Re-select the last pasted text with `gp`
nnoremap gp `[v`]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movement/Motions

" Always move linewise in normal mode
nnoremap k gk
nnoremap j gj

" Preserve indentation when moving lines
" See http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<Return>==
nnoremap <C-k> :m .-2<Return>==
vnoremap <C-j> :m '>+1<Return>gv=gv
vnoremap <C-k> :m '<-2<Return>gv=gv

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Linting


" PLUGIN(S)

" ALE
" Use <Leader>aj or <Leader>ak for quickly jumping between lint errors
nmap <silent> <Leader>aj :ALENext<cr>
nmap <silent> <Leader>ak :ALEPrevious<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing

" Use . in visual mode to execute the dot command on each selected line
xnoremap . :normal .<CR>