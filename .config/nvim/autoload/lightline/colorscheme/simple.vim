" Colors
let s:main    = [ '#928374',  'NONE'    ]
let s:error   = [ 'NONE',     '#CC241D' ]
let s:warning = [ 'NONE',     '#D79921' ]
let s:normal  = [ '#EBDBB2',  'NONE'    ]
let s:insert  = [ '#689D6A',  'NONE'    ]
let s:replace = [ '#B16286',  'NONE'    ]
let s:visual  = [ '#D65D0E',  'NONE'    ]


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
