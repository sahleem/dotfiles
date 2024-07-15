" Remove all existing highlighting and set the defaults.
hi clear

" Define name
let g:colors_name = "sea-raccoon"

" highlighting
hi Normal guibg=#1b1b1b guifg=#8e9b9a
hi Comment guifg=#505050
hi String guifg=#3c7363
hi link Character String
hi Number guifg=#a5957b
hi Boolean guifg=#a5957b
hi Float guifg=#a5957b
hi Identifier guifg=#84bfb4
hi link Function Identifier
hi Statement guifg=#245c73
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi link Operator Statement
hi link Keyword Statement
hi link Exception Statement
hi link PreProc Statement
hi Special guifg=#84bfb4
hi link Constant Special
hi link Type Special
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type
hi link SpecialChar Special
hi Underlined guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi link Ignore Comment
hi Error guifg=#a16359
hi Todo guifg=#a4957b
hi Added guifg=#3c7363
hi Changed guifg=#a5957b
hi Removed guifg=#a16359

hi @variable guifg=#84bfb4

" TODO: Pick new colors
