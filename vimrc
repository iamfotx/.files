""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General

" Keep .swp files in uniquely-named files in $HOME/.vim/swapfiles
set directory=$HOME/.vim/swapfiles//
set viminfo="$HOME/.vim/cache/.viminfo"

" Use " " (space) as <Leader>
let mapleader = " "

" persist local vimrc loading decision if made in Upper case
let g:localvimrc_persistent=1

" Use %% on the command line to expand to the dir of the current file
cnoremap <Expr> %% expand("%:h") . "/"

" copy current file's path
nmap rcpc:let @+ = expand("%") <cr>
nmap <leader>cp :let @+ = expand("%:p") <cr>

" source ~/.vimrc
nnoremap <leader>sv :so ~/.vimrc<CR>

" bind <leader>k to grep word under cursor
nnoremap <leader>k :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" easy escape
inoremap kj <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins

call plug#begin('~/.vim/plugs')

" Themes
Plug 'haishanh/night-owl.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

Plug 'mileszs/ack.vim'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
Plug 'wincent/command-t', {
  \ 'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make' }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'wincent/terminus'
Plug 'sheerun/vim-polyglot'
Plug 'jxnblk/vim-mdx-js'
Plug 'ervandew/supertab'
Plug 'wellle/targets.vim'
Plug 'jiangmiao/auto-pairs'

" Plug 'lifepillar/vim-mucomplete'
" Plug 'rstacruz/vim-closer'
" Plug 'Raimondi/delimitMate'
" Plug 'tpope/vim-endwise'
" Plug 'preservim/nerdtree'


call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation

set autoindent
set smartindent
set copyindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Themes & Colors

" If you have vim >=8.0 or Neovim >= 0.1.5
" enable gui colors in the terminal
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

colorscheme ayu

" vim-airline
" Sync vim-airline colors with current base16 color scheme
let g:airline_theme='base16'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching

" ignore case when searching
set ignorecase

" don't ignore case if using any uppercase
set smartcase

" highlight matches
set hlsearch

" command-t
" Ignore node_modules with command-t
let g:CommandTWildIgnore = &wildignore . ",*/node_modules"

" Clear highlighting for the current search with <Leader>/
" Adapted from https://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting/657484#657484
nnoremap <Leader>/ :let @/ = ""<Return>

" map <leader><CR> to toggle search highlighting
nnoremap <leader><CR> :set hlsearch!<CR>

" ACK
" Open :Ack with <Leader>a
nnoremap <Leader>a :Ack<Space>
vnoremap <Leader>a :Ack<Space>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Wrapping

" wrap long lines by default
set wrap

" when wrapping, break on word boundaries
set linebreak

" auto wrap text at 80 chars
set textwidth=80

" Toggle wrapping with <Leader>w
noremap <Leader>w :set wrap!<Return>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line numbers

" show line numbers
set number

" show relative line numbers
set rnu

" Toggle line numbers with <Leader>n
noremap <Leader>n :set number!<Return>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy/paste

" copy to the clipboard when yanking
set clipboard=unnamed

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance

" open split panes on bottom (instead of top)
set splitbelow

" open split panes on right (instead of left)
set splitright

" always show status bar
set laststatus=2

" scroll to middle
set scrolloff=8

set shiftround
set incsearch
set noerrorbells
set mouse=a


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Formatting

" use spaces instead of tabs
set expandtab

" use 2 char width for tabs
set tabstop=2

" use 2 spaces for indent
set shiftwidth=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax

syntax enable

" allow JSX in .js files
let g:jsx_ext_required = 0

" allow Flow in .js files
let g:javascript_plugin_flow = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Netrw

" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir = "trash"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy/paste

" Re-select the last pasted text with `gp`
nnoremap gp `[v`]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Linting

" always show the signcolumn on LH side
set signcolumn=yes

" Use <Leader>aj or <Leader>ak for quickly jumping between lint errors
nmap <silent> <Leader>aj :ALENext<cr>
nmap <silent> <Leader>ak :ALEPrevious<cr>

" ALE
" don't highlight first char of errors
let g:ale_set_highlights = 0

" enable completion when available
let g:ale_completion_enabled = 1

let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint', 'tsserver']
\}
let g:ale_linters_ignore = {
\ 'typescript': ['tslint']
\}

let g:ale_fix_on_save = 1
let g:ale_fixers = {
\ 'css': ['prettier'],
\ 'html': ['prettier'],
\ 'javascript': ['prettier', 'eslint'],
\ 'typescript': ['prettier'],
\ 'json': ['prettier']
\}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing

" Use . in visual mode to execute the dot command on each selected line
xnoremap . :normal .<CR>
