" ---PLUGINS---
source ~/.config/nvim/plugins.vim
 
"---LSP---
luafile ~/.config/nvim/lsp.lua

set omnifunc=v:lua.vim.lsp.omnifunc

inoremap <expr> <tab>   pumvisible() ? "\<C-n>" : "\<tab>"
inoremap <expr> <S-tab> pumvisible() ? "\<C-p>" : "\<S-tab>"

set completeopt=menuone,noinsert,noselect
set shortmess+=c

" ---CONFIGS---
source ~/.config/nvim/lookandfeel.vim

" ---TWEAKS---,

" indenting
set tabstop=4
set shiftwidth=4
set expandtab

" Goyo	
let g:goyo_linenr=1
let g:goyo_height="100%"
set foldcolumn=0
let g:goyo_width=80

" fix mouse in tmux
if !has('nvim') " use this for backward compatability in vim
	set ttymouse=xterm2
endif
set mouse=a

set updatetime=100

set fillchars=stl:\ ,stlnc:\ ,fold:\ ,vert:\ ,
" ---BINDINGS---
map <Space> <Leader>

map <silent> <F11> :Goyo<cr>

"nicer split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
