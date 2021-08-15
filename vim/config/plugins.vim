" Plugins

call plug#begin('~/.vim/plugs')

Plug 'haishanh/night-owl.vim'
" Plug 'tpope/vim-sensible'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-vinegar'
" Plug 'preservim/nerdtree'
" Plug 'tpope/vim-sleuth'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-repeat'
" Plug 'wellle/targets.vim'
"Plug 'rstacruz/vim-closer'
"Plug 'Raimondi/delimitMate'
"Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
" Plug 'ervandew/supertab'
"Plug 'lifepillar/vim-mucomplete'
Plug 'wincent/command-t', {
  \ 'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make' }
" Plug 'wincent/terminus'
" Plug 'sheerun/vim-polyglot'
" Plug 'jxnblk/vim-mdx-js'
Plug 'mileszs/ack.vim'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'

call plug#end()