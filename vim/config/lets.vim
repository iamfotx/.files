""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General

" persist local vimrc loading decision if made in Upper case
let g:localvimrc_persistent=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax

" allow JSX in .js files
let g:jsx_ext_required = 0

" allow Flow in .js files
let g:javascript_plugin_flow = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" PLUGIN(S)

" vim-airline
" Sync vim-airline colors with current base16 color scheme
let g:airline_theme='base16'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching


" PLUGIN(S)

" command-t
" Ignore node_modules with command-t
let g:CommandTWildIgnore = &wildignore . ",*/node_modules"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Netrw

" Allow netrw to remove non-empty local directories
let g:netrw_localrmdir = "trash"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Linting


" PLUGIN(s)

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
\ 'javascript': ['prettier'],
\ 'typescript': ['prettier'],
\ 'json': ['prettier']
\}