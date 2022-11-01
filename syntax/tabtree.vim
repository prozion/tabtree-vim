if exists("b:current_syntax")
  finish
endif

""""""" subjects
syn match tabtree_subject "\v(^|\t|/)\zs[A-Za-zА-Яа-я]\S*\ze(\s|$)"
hi link tabtree_subject TabtreeId

syn match tabtree_subject_namespace "\v(\t|^)@<=[a-z]+/"
hi link tabtree_subject_namespace TabtreeIdNamespace

" syn keyword tabtree_subject_category
" syn keyword tabtree_subject_instance
" syn keyword tabtree_subject_supercategory

""""""" predicates
syn match tabtree_predicate "\v( |/)@<=[A-Za-z0-9_\-]+:"
hi link tabtree_predicate TabtreePredicate

syn match tabtree_predicate_namespace "\v( )@<=[a-z]+/"
hi link tabtree_predicate_namespace TabtreePredicateNamespace
" syn keyword tabtree_predicate_id
" syn keyword tabtree_predicate_typr

""""""" objects
syn match tabtree_object "\v(:|/|,)@<=[a-zA-Z_][A-Za-z0-9_\-]+( |\^|$|,)@="
hi link tabtree_object TabtreeId

syn match tabtree_object_namespace "\v(:|,)@<=[a-z]+/"
hi link tabtree_object_namespace TabtreeIdNamespace

syn region tabtree_object_code start=+`+ end=+`+ keepend
hi link tabtree_object_code TabtreeCode

" syn match tabtree_object_date "\v(:|,|-|=)@<=~?(((BC|AD)-)?([0-9x]{2}\.)?((([0x][1-9xqh])|([1x][012x]))\.)?[0-9qh]{4}\??|((17|18|19|20)[0-9xqh]{2})\??|(BC|AD)-[0-9xqh]{1,4})(\s|,|:|-|\^)@=)"
syn match tabtree_object_date "\v(:|,|-|\=)@<=((\d\d\.\d\d\.\d\d\d\d)|(\d\d\.\d\d\d\d)|(\d\d\.\d\d)|(19\d\d)|(20\d\d))(\s|,|:|-|\^|$)@="
hi link tabtree_object_date TabtreeDate

syn match tabtree_object_directory "\v((dir|path):)@<=\S+(\^|,| |$)"
hi link tabtree_object_directory TabtreeDirectory

" syn keyword tabtree_object_file
syn match tabtree_object_file "\v(file:)@<=\S+(\^|,| |$)"
hi link tabtree_object_file TabtreeFile

syn match tabtree_object_url "\v(url(-old)?:)@<=\S+( |\^|$|,)@="
hi link tabtree_object_url Underlined

" syn keyword tabtree_object_speciallink

syn match tabtree_object_money "\v(:|,)@<=\d+(NOK|SEK|DKK|GBP|EUR|BYN|KZT|GEL|UAH|RUB|kr|[$R])( |\^|$|,)@="
hi link tabtree_object_money TabtreeMoney

syn match tabtree_object_numeric "\v(:|,)@<=[0-9]+(\s|,|\^|$)@="
syn match tabtree_object_numeric "\v(:|,)@<=0x[A-Fa-f0-9]+(\s|,|\^|$)@="
syn match tabtree_object_numeric "\v(:|,)@<=(\+|-)?[1-9][0-9]*\.[0-9]+(\s|,|\^|$)@="
syn match tabtree_object_numeric "\v(:|,)@<=(\+|-)?[1-9][0-9]*\.[0-9]+[eE](\+|-)?[0-9]+(\s|,|\^|$)@="
syn match tabtree_object_numeric "\v(:|,)@<=[~<>]?[+\-]?[0-9]+(\s|,|\^|$)@="
hi link tabtree_object_numeric TabtreeNumber

" syn keyword tabtree_object_old
" syn keyword tabtree_object_percentage
" syn keyword tabtree_object_place
" syn keyword tabtree_object_reference

syn match tabtree_object_source "\v(_s:)@<=[^,\s]+"
syn match tabtree_object_source "\v([^:])@<=\^\S+(\s|,|$)@="
hi link tabtree_object_source TabtreeSource

syn match tabtree_language_tag "\v([^:])@<=\@[a-z][a-z](\s|,|\^|$)@="
hi link tabtree_language_tag TabtreeLanguageTag

syn match tabtree_object_specialword "\v(\<t\>)|(\<f\>)|(\<empty\>)|(\<exists\>)|(\<none\>)"
hi link tabtree_object_specialword TabtreeSpecialWord

syn region tabtree_object_string start=+"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ keepend
hi link tabtree_object_string TabtreeString

" syn keyword tabtree_object_time
" syn keyword tabtree_object_type

""""""" other
syn match tabtree_comment "\v;.*$"
hi link tabtree_comment TabtreeComment

syn match tabtree_sys "\v(,|\s|^)@<=_[a-z0-9]+(,|\s|$)@="
hi link tabtree_sys TabtreeSys

" syn keyword tabtree_multiline_comment

syn match tabtree_keyword "\vowl/Ontology"
syn keyword tabtree_keyword namespaces classes properties individuals
syn match tabtree_keyword "\v\sa:"
syn match tabtree_keyword "\veq:"
syn match tabtree_keyword "\veq-class:"
syn match tabtree_keyword "\veq-property:"
syn match tabtree_keyword "\vsubclass-of:"
syn match tabtree_keyword "\vsubproperty-of:"
syn match tabtree_keyword "\vdomain:"
syn match tabtree_keyword "\vrange:"
hi link tabtree_keyword TabtreeKeyword

"""""""""""""""""""""""""""""""""""""""""""""""

" highlight link tabtree_object_hyperlink Underlined
" highlight link tabtree_subject_category LightYellow


let b:current_syntax = "tabtree"
