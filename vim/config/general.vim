""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors

" Use current terminal color scheme for vim
if filereadable(expand("~/.vimrc_background"))
  "let base16colorspace = 256
  source ~/.vimrc_background
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Appearance

syntax on
colorscheme night-owl