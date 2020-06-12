let s:gui00 = "#151515"
let s:gui01 = "#262626"
let s:gui02 = "#4f5b66"
let s:gui03 = "#65737e"
let s:gui04 = "#a7adba"
let s:gui05 = "#c0c5ce"
let s:gui06 = "#cdd3de"
let s:gui07 = "#d8dee9"
let s:gui08 = "#870000"
let s:gui09 = "#f99157"
let s:gui0A = "#fac863"
let s:gui0B = "#437019"
let s:gui0C = "#5fb3b3"
let s:gui0D = "#0d61ac"
let s:gui0E = "#c594c5"
let s:gui0F = "#ab7967"

let s:guiWhite = "#ffffff"
let s:guiGray = "#666666"
let s:ctermWhite = "231"
let s:ctermGray = "243"
" Colors
let s:main    = [ '#666666',  'NONE'    ]
let s:error   = [ 'NONE',     '#870000' ]
let s:warning = [ 'NONE',     '#f99157' ]
let s:normal  = [ '#5fb3b3',  'NONE'    ]
let s:insert  = [ '#437019',  'NONE'    ]
let s:replace = [ '#fac863',  'NONE'    ]
let s:visual  = [ '#c594c5',  'NONE'    ]


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.inactive.left   = [ s:main            ]
let s:p.inactive.right  = [ s:main            ]
let s:p.normal.middle   = [ s:main            ]
let s:p.normal.error    = [ s:error           ]
let s:p.normal.warning  = [ s:warning         ]
let s:p.normal.left     = [ s:normal,  s:main ]
let s:p.normal.right    = [ s:normal,  s:main ]
let s:p.insert.left     = [ s:insert,  s:main ]
let s:p.insert.right    = [ s:insert,  s:main ]
let s:p.replace.left    = [ s:replace, s:main ]
let s:p.replace.right   = [ s:replace, s:main ]
let s:p.visual.left     = [ s:visual,  s:main ]
let s:p.visual.right    = [ s:visual,  s:main ]
let s:p.tabline.left    = [ s:normal,  s:main ]
let s:p.tabline.right   = [ s:main            ]
let s:p.tabline.middle  = [ s:main            ]
let s:p.tabline.tabsel  = [ s:normal          ]
 
let g:lightline#colorscheme#simple#palette = lightline#colorscheme#fill(s:p)
