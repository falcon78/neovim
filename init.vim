"Plugin Manager
call plug#begin('~/.vim/plugged')
  "eslint and prettier
  Plug 'w0rp/ale'
  "coc.vim (intellisense for vim)
  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
  "Prettier vim-plug
  Plug 'prettier/vim-prettier', { 'do': 'npm install' }
  "Auto bracket close plugin 
  Plug 'rstacruz/vim-closer'
  " add this line to your .vimrc file
  Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'html', 'css'] }
call plug#end()


"emmet settings for jsx
let g:user_emmet_install_global = 0
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

autocmd FileType html,css,javascript.jsx EmmetInstall

let g:user_emmet_leader_key=','


"Prettier and eslint
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'


let g:ale_fix_on_save = 1


" Colors {{{
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable                " enable syntax processing
set background=dark
" }}} Colors

" Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" better ESC
inoremap jj <esc>
set number
set cursorline
set title
set relativenumber

"copy to clipboard
set clipboard=unnamed
