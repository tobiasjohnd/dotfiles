" Colors
let s:main    = [ '#4C566A', 'NONE'    ]
let s:error   = [ '#2E3440', '#BF616A' ]
let s:warning = [ '#2E3440', '#EBCB8B' ]
let s:normal  = [ '#D8DEE9', 'NONE'    ]
let s:insert  = [ '#A3BE8C', 'NONE'    ]
let s:replace = [ '#D08770', 'NONE'    ]
let s:visual  = [ '#B48EAD', 'NONE'    ]


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
let s:p.tabline.left    = [ s:main            ]
let s:p.tabline.right   = [ s:main            ]
let s:p.tabline.middle  = [ s:main            ]
let s:p.tabline.tabsel  = [ s:normal          ]
 
let g:lightline#colorscheme#simple#palette = lightline#colorscheme#fill(s:p)
