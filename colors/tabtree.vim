set background=dark
" hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "tabtree"

" hi normal       guifg=white   guibg=black   ctermfg=white   ctermbg=black   gui=none

" colors cheatsheet: https://www.ditig.com/256-colors-cheat-sheet
hi TabtreeCode ctermfg=80
hi TabtreeComment ctermfg=244
hi TabtreeDate ctermfg=175
hi TabtreeDirectory ctermfg=152
hi TabtreeFile ctermfg=152
" 153, 224, 187, 195
hi TabtreeId ctermfg=110
hi TabtreeIdNamespace ctermfg=110 cterm=bold
" hi TabtreeKeyword ctermfg=204
hi TabtreeKeyword ctermfg=203
hi TabtreeLanguageTag ctermfg=147
hi TabtreeMoney ctermfg=11
hi TabtreeNumber ctermfg=69
hi TabtreePredicate ctermfg=209
hi TabtreePredicateNamespace ctermfg=209 cterm=bold
hi TabtreeSource ctermfg=145 cterm=underline
hi TabtreeSpecialWord ctermfg=171
hi TabtreeString ctermfg=114
hi TabtreeSys ctermfg=152

hi LineNr ctermfg=grey
