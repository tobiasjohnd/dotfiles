
let g:lightline = {}
let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ],
    \           [ 'gitstatus' ],
    \           [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ],
    \            [ 'fileencoding' ],
    \            [ 'filetype' ] ] }
let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ] ] }
let g:lightline.tabline = {
    \ 'left': [ [ 'tabs' ] ],
    \ 'right': [ [ 'close' ] ] }
let g:lightline.tab = {
    \ 'active': [ 'tabnum', 'filename', 'modified' ],
    \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }
let g:lightline.component = {
    \ 'gitstatus': 'master ~0 +0 -0',
    \ 'mode': '%{lightline#mode()}',
    \ 'absolutepath': '%F',
    \ 'relativepath': '%f',
    \ 'filename': '%t%m',
    \ 'modified': '%M',
    \ 'bufnum': '%n',
    \ 'paste': '%{&paste?"PASTE":""}',
    \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}[%{&ff}]',
    \ 'filetype': '%{&ft!=#""?&ft:"no ft"}',
    \ 'spell': '%{&spell?&spelllang:""}',
    \ 'lineinfo': '%p%% %l:%-c',
    \ 'close': '%999X X ',
    \ 'winnr': '%{winnr()}' }
let g:lightline.component_visible_condition = {
    \ 'modified': '&modified||!&modifiable',
    \ 'readonly': '&readonly',
    \ 'paste': '&paste',
    \ 'spell': '&spell' }
let g:lightline.component_function = {}
let g:lightline.component_function_visible_condition = {}
let g:lightline.component_expand = {
    \ 'tabs': 'lightline#tabs' }
let g:lightline.component_type = {
    \ 'tabs': 'tabsel',
    \ 'close': 'raw' }
let g:lightline.component_raw = {}
let g:lightline.tab_component = {}
let g:lightline.tab_component_function = {
      \ 'filename': 'lightline#tab#filename',
      \ 'modified': 'lightline#tab#modified',
      \ 'readonly': 'lightline#tab#readonly',
      \ 'tabnum': 'lightline#tab#tabnum' }
let g:lightline.colorscheme = 'simple'
let g:lightline.mode_map = {
    \ 'n' : 'NORMAL',
    \ 'i' : 'INSERT',
    \ 'R' : 'REPLACE',
    \ 'v' : 'VISUAL',
    \ 'V' : 'V-LINE',
    \ "\<C-v>": 'V-BLOCK',
    \ 'c' : 'COMMAND',
    \ 's' : 'SELECT',
    \ 'S' : 'S-LINE',
    \ "\<C-s>": 'S-BLOCK',
    \ 't': 'TERMINAL',
    \ }
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline.tabline_separator = g:lightline.separator
let g:lightline.tabline_subseparator = g:lightline.subseparator
let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 1
    \ }
let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 1
    \ }
