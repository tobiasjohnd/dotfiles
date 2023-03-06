" ---Wishlist---
" TODO config code folding
" TODO set up nvimlsp
" TODO telescope.nvim
" TODO language server memes
" TODO git integration
" TODO make a keybinging for the folowing
"       TODO check diagnostics
"       TODO run tests

" ---Plugins---
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.config/nvim/plugged')
    Plug 'ap/vim-css-color'
    Plug 'kien/rainbow_parentheses.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'editorconfig/editorconfig-vim'

call plug#end()

" ---Theme---
set termguicolors
let ayucolor="dark"
colorscheme ayu
hi Normal guibg=NONE ctermbg=NONE

set fillchars=stl:\ ,stlnc:\ ,fold:\ ,vert:\ ,

set number
set relativenumber

" ---Statusline---
set noshowmode
set cmdheight=1

let g:lightline = {
\   'active': {
\       'left':             [ [ 'filename' ] ],
\       'right':            [ [ 'lineinfo' ] ] },
\   'inactive': {
\       'left':             [ [ 'filename' ] ],
\       'right':            [ [ 'lineinfo' ] ] },
\   'tabline': {
\       'left':             [ [ 'tabs' ] ] },
\   'tab': {
\       'active':           [ 'filename', 'modified' ],
\       'inactive':         [ 'filename', 'modified' ] },
\   'component': {
\       'filename':         '%f %m',
\       'lineinfo':         '%p%% %l:%-c' }, 
\   'colorscheme':          'simple',
\ } 

" ---RainbowParentheses---
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" ---nnn---
let nnn#layout = { 'window': { 'width': 0.8, 'height': 0.8, 'highlight': 'Debug' } }
let g:nnn#action = {
    \ '<C-t>': 'tab split',
    \ '<C-x>': 'split',
    \ '<C-v>': 'vsplit'}
let g:nnn#replace_netrw = 1


"inoremap <expr> <tab>   pumvisible() ? "\<C-n>" : "\<tab>"
"inoremap <expr> <S-tab> pumvisible() ? "\<C-p>" : "\<S-tab>"

"set completeopt=menuone,noinsert,noselect
"set shortmess+=c

" ---Indenting---
set shiftwidth=4
set softtabstop=4
set noexpandtab
set smartindent

" Fix mouse in tmux
set mouse=a
set updatetime=100

" ---Bindings---
map <Space> <Leader>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
