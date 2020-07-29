" ---colourscheme---
set termguicolors
let g:jellybeans_use_term_italics=1
let ayucolor="dark"
colorscheme ayu

" multicoloured brackets
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" GitGutter
set number
set signcolumn=no

let g:gitgutter_signs = 0
let g:gitgutter_highlight_linenrs = 1
silent! !git rev-parse --is-inside-work-tree
if v:shell_error != 0
  let g:gitgutter_git_args='--git-dir="/home/toby/.dotfiles/shared/" --work-tree="/home/toby"'
endif

highlight link GitGutterAddLineNr           GitGutterAdd
highlight link GitGutterChangeLineNr        GitGutterChange
highlight link GitGutterDeleteLineNr        GitGutterDelete
highlight link GitGutterChangeDeleteLineNr  GitGutterChangeDelete

" ---Statusline---
set noshowmode
set cmdheight=1
set showtabline=2

" removing statusline background
hi clear StatusLineNC
hi clear StatusLine
hi link StatusLine SignColumn
hi Normal guibg=NONE ctermbg=NONE
" lightline config
let g:lightline = {}
let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ], [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ], [ 'filetype' ] ] }
let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ] ] }
let g:lightline.tabline = {
    \ 'left': [ [ 'cwd' ], [ 'tabs' ] ] }
let g:lightline.tabline_separator = { 'left': '' , 'right': '' }
let g:lightline.tab = {
    \ 'active'    : [ 'filename', 'modified' ],
    \ 'inactive'  : [ 'filename', 'modified' ] }
let g:lightline.component = {
    \ 'gitstatus': 'master ~0 +0 -0',
    \ 'mode': '%{lightline#mode()}',
    \ 'filename': '%f',
    \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}[%{&ff}]',
    \ 'lineinfo': '%p%% %l:%-c', 
    \ 'cwd': '%{getcwd()}  -'}
let g:lightline.colorscheme = 'simple'
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 1
    \ }
