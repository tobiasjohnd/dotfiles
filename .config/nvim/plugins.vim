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
    Plug 'haorenW1025/completion-nvim'
    Plug 'haorenW1025/diagnostic-nvim'
    Plug 'neovim/nvim-lsp'
    Plug 'ayu-theme/ayu-vim'
    Plug 'owickstrom/vim-colors-paramount'
call plug#end()
