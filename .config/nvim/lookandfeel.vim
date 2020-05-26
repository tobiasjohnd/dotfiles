" colorscheme
set termguicolors
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'
let g:gruvbox_sign_column='bg0'
let g:gruvbox_vert_split='bg0'
let g:gruvbox_italicize_comments=0
let g:gruvbox_invert_selection=0
colorscheme gruvbox

" Number-column
set number
set signcolumn=no

let g:gitgutter_signs = 0
let g:gitgutter_highlight_linenrs = 1
highlight link GitGutterAddLineNr           GitGutterAdd
highlight link GitGutterChangeLineNr        GitGutterChange
highlight link GitGutterDeleteLineNr        GitGutterDelete
highlight link GitGutterChangeDeleteLineNr  GitGutterChangeDelete

" Comand/status lines
set noshowmode
set cmdheight=2

let g:lightline = {}
let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ], [ 'gitstatus' ], [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ], [ 'fileencoding' ], [ 'filetype' ] ] }
let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ] ] }
let g:lightline.tabline = {
    \ 'left': [ [ 'tabs' ] ] }
let g:lightline.tab = {
    \ 'active'    : [ 'filename', 'modified' ],
    \ 'inactive'  : [ 'filename', 'modified' ] }
let g:lightline.component = {
    \ 'gitstatus': 'master ~0 +0 -0',
    \ 'mode': '%{lightline#mode()}',
    \ 'filename': '%t%m',
    \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}[%{&ff}]',
    \ 'lineinfo': '%p%% %l:%-c' }
let g:lightline.colorscheme = 'simple'
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
