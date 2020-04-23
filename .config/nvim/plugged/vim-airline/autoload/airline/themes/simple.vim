" Colors
let s:insert   = [143, '#A3BE8C']
let s:visual   = [131, '#B48EAD']
let s:replace  = [ 67, '#5E81AC']
let s:modified = [166, '#D08770']
let s:warning  = [124, '#BF616A']
let s:fgmain   = [242, '#4C566A']
let s:fgdark   = [235, '#2E3440']
let s:fglight  = [249, '#D8DEE9']

" Backgrounds
let s:outerbg  = [ 16, 'NONE']
let s:innerbg  = [234, 'NONE']

" Normal mode
let s:N1 = [s:fglight[1], s:outerbg[1], s:outerfg[0], s:fgmain[0]]
let s:N3 = [s:fgmain[1]   , s:innerbg[1], s:fgmain[0]   , s:innerbg[0]]

" Normal mode - modified
let s:NM1 = [s:fgdark[1], s:modified[1], s:fgdark[0], s:modified[0]]
let s:NM3 = [s:modified[1]  , s:outerbg[1], s:modified[0], s:fgdark[0]]

" Insert mode
let s:I1 = [s:fgdark[1], s:insert[1], s:fglight[0], s:insert[0]]
let s:I3 = [s:insert[1]  , s:innerbg[1], s:insert[0], s:innerbg[0]]

" Visual mode
let s:V1 = [s:fgdark[1], s:visual[1], s:fglight[0], s:visual[0]]
let s:V3 = [s:visual[1]    , s:innerbg[1], s:visual[0], s:innerbg[0]]

" Replace mode
let s:R1 = [s:fgdark[1], s:replace[1], s:fglight[0], s:replace[0]]
let s:R3 = [s:replace[1], s:innerbg[1], s:replace[0], s:innerbg[0]]


" Inactive pane
let s:IA = [s:fgdark[1], s:outerbg[1], s:innerbg[0], s:innerbg[0]]
let s:IAc = [s:fgmain[1], s:outerbg[1], s:outerbg[0], s:outerbg[0]]

let g:airline#themes#simple#palette = {}
let g:airline#themes#simple#palette.accents = {
    \ 'red': ['#BF616A', '', 160, '', '']}

let g:airline#themes#simple#palette.inactive = {
    \ 'airline_a': s:IA,
    \ 'airline_b': s:IA,
    \ 'airline_c': s:IAc,
    \ 'airline_x': s:IA,
    \ 'airline_y': s:IA,
    \ 'airline_z': s:IA}

let g:airline#themes#simple#palette.inactive_modified = {
    \ 'airline_a': s:IA,
    \ 'airline_b': s:IA,
    \ 'airline_c': s:NM3,
    \ 'airline_x': s:IA,
    \ 'airline_y': s:IA,
    \ 'airline_z': s:IA}

let g:airline#themes#simple#palette.normal = {
    \ 'airline_a': s:N1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:N3}

let g:airline#themes#simple#palette.normal_modified = {
    \ 'airline_a': s:NM1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:NM3}

let g:airline#themes#simple#palette.insert = {
    \ 'airline_a': s:I1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:I3}
let g:airline#themes#simple#palette.insert_modified = {}

let g:airline#themes#simple#palette.replace = {
    \ 'airline_a': s:R1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:R3}
let g:airline#themes#simple#palette.replace_modified = {}

let g:airline#themes#simple#palette.visual = {
    \ 'airline_a': s:V1,
    \ 'airline_b': s:N3,
    \ 'airline_c': s:N3,
    \ 'airline_x': s:N3,
    \ 'airline_y': s:N3,
    \ 'airline_z': s:V3}
let g:airline#themes#simple#palette.visual_modified = {}

let g:airline#themes#simple#palette.normal.airline_warning =
    \ [s:fgdark[1], s:warning[1], s:fgdark[0], s:warning[0]]

let g:airline#themes#simple#palette.normal_modified.airline_warning =
    \ g:airline#themes#simple#palette.normal.airline_warning

let g:airline#themes#simple#palette.insert.airline_warning =
    \ g:airline#themes#simple#palette.normal.airline_warning

let g:airline#themes#simple#palette.insert_modified.airline_warning =
    \ g:airline#themes#simple#palette.normal.airline_warning

let g:airline#themes#simple#palette.visual.airline_warning =
    \ g:airline#themes#simple#palette.normal.airline_warning

let g:airline#themes#simple#palette.visual_modified.airline_warning =
    \ g:airline#themes#simple#palette.normal.airline_warning

let g:airline#themes#simple#palette.replace.airline_warning =
    \ g:airline#themes#simple#palette.normal.airline_warning

let g:airline#themes#simple#palette.replace_modified.airline_warning =
    \ g:airline#themes#simple#palette.normal.airline_warning
