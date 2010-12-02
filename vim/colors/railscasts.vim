" Vim color scheme
"
" Name:        railscast.vim
" Maintainer:  Josh O'Rourke <jorourke23@gmail.com> 
" License:     public domain
"
" A GUI Only port of the RailsCasts TextMate theme [1] to Vim.
" Some parts of this theme were borrowed from the well-documented Lucius theme [2].
" 
" [1] http://railscasts.com/about 
" [2] http://www.vim.org/scripts/script.php?script_id=2536

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "railscasts"

" Colors
" Brown        #BC9458
" Dark Blue    #6D9CBE
" Dark Green   #519F50
" Dark Orange  #CC7833
" Light Blue   #D0D0FF
" Light Green  #A5C261
" Tan          #FFC66D

hi Normal                    guifg=#E6E1DC  guibg=#000000 " guibg=#2B2B2B
hi Cursor                    guibg=#FFFFFF
hi CursorLine                guibg=#333435
hi LineNr                    guifg=#888888 guibg=#DEDEDE
hi Search                    guibg=#5A647E
hi Visual                    guibg=#5A647E

" Folds
" -----
" line used for closed folds
hi Folded                    guifg=#F6F3E8 guibg=#444444 gui=NONE

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A5C261 gui=NONE

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#A5C261 gui=NONE
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA gui=NONE


"rubyComment
hi Comment                   guifg=#BC9458 gui=italic
hi Todo                      guifg=#BC9458 guibg=NONE gui=italic

"rubyPseudoVariable
"nil, self, symbols, etc
hi Constant                  guifg=#6D9CBE

"rubyClass, rubyModule, rubyDefine
"def, end, include, etc
hi Define                    guifg=#CC7833

"rubyInterpolation
hi Delimiter                 guifg=#519F50

"rubyError, rubyInvalidVariable
hi Error                     guifg=#FFFFFF guibg=#990000

"rubyFunction
hi Function                  guifg=#FFC66D gui=NONE

"rubyIdentifier
"@var, @@var, $var, etc
hi Identifier                guifg=#D0D0FF gui=NONE

"rubyInclude
"include, autoload, extend, load, require
hi Include                   guifg=#CC7833 gui=NONE

"rubyKeyword, rubyKeywordAsMethod
"alias, undef, super, yield, callcc, caller, lambda, proc
hi Keyword                   guifg=#CC7833

" same as define
hi Macro                     guifg=#CC7833 gui=NONE

"rubyInteger
hi Number                    guifg=#A5C261

" #if, #else, #endif
hi PreCondit                 guifg=#CC7833 gui=NONE

" generic preprocessor
hi PreProc                   guifg=#CC7833 gui=NONE

"rubyControl, rubyAccess, rubyEval
"case, begin, do, for, if unless, while, until else, etc.
hi Statement                 guifg=#CC7833 gui=NONE

"rubyString
hi String                    guifg=#A5C261

hi Title                     guifg=#FFFFFF

"rubyConstant
hi Type                      guifg=#DA4939 gui=NONE

hi DiffAdd                   guifg=#E6E1DC guibg=#144212
hi DiffDelete                guifg=#E6E1DC guibg=#660000

hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

hi xmlTag                    guifg=#E8BF6A
hi xmlTagName                guifg=#E8BF6A
hi xmlEndTag                 guifg=#E8BF6A

" Org-mode
" 'normal' holds defaults, set them to whatever you want
" or just move lines below it into your own color file and
" they will inherit 'normal' settings except where they
" override them
hi Normal guifg=#bbbbbb guibg=black	ctermfg=green ctermbg=black

hi FoldColumn guifg=black guibg=black ctermfg=black
hi SignColumn guifg=gray guibg=black ctermfg=black

" define foreground colors for ****UNfolded**** outline heading levels
hi OL1 guifg=#7744ff ctermfg=blue
hi OL2 guifg=#aaaa22 ctermfg=brown
hi OL3 guifg=#00ccff ctermfg=cyan
hi OL4 guifg=#999999 gui=italic  	ctermfg=gray
hi OL5 guifg=#eeaaee ctermfg=lightgray
hi OL6 guifg=#9966ff 	ctermfg=yellow
hi OL7 guifg=#dd99dd  	ctermfg=red
hi OL8 guifg=cyan	ctermfg=grey
hi OL9 guifg=magenta	ctermfg=blue

" define highlighting for ***FOLDED*** outline heading levels
" 'Folded' is used for folded OL1
hi Folded gui=bold guifg=#6633ff guibg=#111111 	ctermfg=blue
" 'WarningMsg' is used for folded OL2
hi WarningMsg gui=bold guifg=#aaaa22  guibg=#111111	ctermfg=brown
" 'WildMenu' is used for folded OL3
hi WildMenu gui=bold guifg=#00ccff  guibg=#111111	ctermfg=cyan
" 'DiffAdd' is used for folded OL4
hi DiffAdd gui=bold guifg=#999999 gui=italic  guibg=#111111	ctermfg=gray
" 'DiffChange' is used for folded OL5
hi DiffChange gui=bold guifg=#eeaaee  guibg=#111111	ctermfg=lightgray

" various text item highlightings are below
hi Properties guifg=pink ctermfg=lightred
hi Tags guifg=pink ctermfg=lightred
hi Dates guifg=magenta ctermfg=magenta
hi stars guifg=#444444 ctermfg=darkgray
hi Props guifg=#ffa0a0 ctermfg=lightred
hi code guifg=orange gui=bold ctermfg=14
hi itals gui=italic guifg=#aaaaaa ctermfg=lightgray
hi boldtext gui=bold guifg=#aaaaaa ctermfg=lightgray
hi undertext gui=underline guifg=#aaaaaa ctermfg=lightgray
hi lnumber guifg=#999999 ctermfg=gray

hi TODO guifg=orange guibg=NONE ctermfg=14 ctermbg=NONE
hi CANCELED guifg=red guibg=NONE ctermfg=red ctermbg=NONE
hi STARTED guifg=yellow guibg=NONE ctermfg=yellow ctermbg=NONE
hi NEXT guifg=cyan guibg=NONE ctermfg=cyan ctermbg=NONE
hi DONE guifg=green guibg=NONE ctermfg=green ctermbg=NONE
