"______      _    __ _ _
"|  _  \    | |  / _(_) |
"| | | |___ | |_| |_ _| | ___  ___
"| | | / _ \| __|  _| | |/ _ \/ __|
"| |/ / (_) | |_| | | | |  __/\__ \
"|___/ \___/ \__|_| |_|_|\___||___/
" .vimrc

" ---PLUGINS---
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/plugged')
Plug 'ap/vim-css-color'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" ---THEMING/UI---
" Themeing
colorscheme nord
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1
set termguicolors

source ~/.config/nvim/lightlinerc.vim

" Comand/status lines
set noshowmode
set cmdheight=2

" Number-column
set number
set signcolumn=auto:2
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

" ---TWEAKS---
set foldmethod=syntax
set foldclose=all

" tabs (spaces in disguise)
set shiftwidth=2
set softtabstop=2
set expandtab

" fix mouse in tmux
if !has('nvim') " use this for backward compatability in vim
    set ttymouse=xterm2
endif
set mouse=a

set updatetime=100

" ---BINDINGS---
map <Space> <Leader>

"nicer split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
