
" ---PLUGINS---
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/plugged')
Plug 'ap/vim-css-color'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter' "TODO config this to check against dofile repo when necesary
Plug 'junegunn/goyo.vim' "TODO configure this + keybindings
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

source ~/.config/nvim/lookandfeel.vim

" ---TWEAKS---
set foldmethod=syntax
set foldcolumn=1
set foldignore="#"

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
