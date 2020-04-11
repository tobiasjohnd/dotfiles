"______      _    __ _ _
"|  _  \    | |  / _(_) |
"| | | |___ | |_| |_ _| | ___  ___
"| | | / _ \| __|  _| | |/ _ \/ __|
"| |/ / (_) | |_| | | | |  __/\__ \
"|___/ \___/ \__|_| |_|_|\___||___/
" .vimrc

" PLUGINS
"{{{

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

"}}}

" THEMING/UI
"{{{

colorscheme one
set background=dark

set noshowmode
set cmdheight=2
let g:airline_theme='raven'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#tabline#enabled = 1


set number
set relativenumber
set signcolumn=yes

"}}}

" TWEAKS
"{{{

set foldmethod=marker

" tabs (spaces in disguise)
set shiftwidth=2
set softtabstop=2
set expandtab
"set list

" fix mouse in tmux
if !has('nvim') " use this for backward compatability in vim
  set ttymouse=xterm2
endif
set mouse=a


map <Space> <Leader>

"nicer split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
set updatetime=100

"}}}

" GITGUTTER
"{{{

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

"}}}
