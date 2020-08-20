if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/plugged')
    Plug 'ap/vim-css-color'
    Plug 'itchyny/lightline.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/goyo.vim'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'owickstrom/vim-colors-paramount'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mcchrish/nnn.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'editorconfig/editorconfig-vim'
call plug#end()
