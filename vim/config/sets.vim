""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General

" Keep .swp files in uniquely-named files in $HOME/.vim/swapfiles
set directory=$HOME/.vim/swapfiles//
set viminfo="$HOME/.vim/cache/.viminfo"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation

set autoindent
set smartindent
set copyindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors

" If you have vim >=8.0 or Neovim >= 0.1.5
" enable gui colors in the terminal
if (has("termguicolors"))
 set termguicolors
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching

" ignore case when searching
set ignorecase

" don't ignore case if using any uppercase
set smartcase

" highlight matches
set hlsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Wrapping

" wrap long lines by default
set wrap

" when wrapping, break on word boundaries
set linebreak

" auto wrap text at 80 chars
set textwidth=80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line numbers

" show line numbers
set number
set rnu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy/paste

" copy to the clipboard when yanking
set clipboard=unnamed

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Linting

" always show the signcolumn on LH side
set signcolumn=yes

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Formatting

" use spaces instead of tabs
set expandtab

" use 2 char width for tabs
set tabstop=2

" use 2 spaces for indent
set shiftwidth=2
