" Vim syntax file
" Language:	GAP
" Author:  Frank Lübeck,  highlighting based on file by Alexander Hulpke
" Maintainer:	Frank Lübeck
" Last change:	June 2001 
" CVS version:  $Id: gap.vim,v 1.7 2001/10/31 08:40:19 gap Exp $
" 
" Comments: If you want to use this file, you may want to adjust colors to
" your taste. There are some functions/macros for 
" ToggleCommentGAP     -- toggle comment, add or remove "##  " 
"                         (mapped on F12)
" <F4>                 -- macro to add word under cursor to `local' list
" GAPlocal             -- add whole `local' declaration to current function
"                         (mapped on <F5>)
" Then the completion mechanism <CTRL>-p is extended to complete all
" GAP variable names - search `GAPWORDS' below, how to do this.
"
" For vim version >= 6.0 folding is switched on.
" 
" For vim version >= 6.0 there is another file gap_indent.vim which you 
" may want to copy into ~/.vim/indent/gap.vim -- this provides a nice
" automatic indenting while writing GAP code.
"

" Please, send comments and suggestions to:  Frank.Luebeck@Math.RWTH-Aachen.De

" Remove any old syntax stuff hanging around
syn clear

" comments
syn match gapComment "\(#.*\)*" contains=gapTodo,gapFunLine

" strings and characters
syn region gapString  start=+"+ end=+\([^\\]\|^\)\(\\\\\)*"+
syn match  gapString  +"\(\\\\\)*"+
syn match gapChar +'\\\=.'+ 
syn match gapChar +'\\"'+

" must do
syn keyword gapTodo TODO contained
syn keyword gapTodo XXX contained

" basic infos in file and folded lines
syn match gapFunLine '^#[FVOMPCAW] .*$' contained

syn keyword gapDeclare	DeclareOperation DeclareGlobalFunction 
syn keyword gapDeclare  DeclareGlobalVariable
syn keyword gapDeclare	DeclareAttribute DeclareProperty
syn keyword gapDeclare	DeclareCategory DeclareFilter DeclareCategoryFamily
syn keyword gapDeclare	DeclareRepresentation DeclareInfoClass
syn keyword gapDeclare	DeclareCategoryCollections DeclareSynonym
" the CHEVIE utils
syn keyword gapDeclare  MakeProperty MakeAttribute MakeOperation 
syn keyword gapDeclare  MakeGlobalVariable MakeGlobalFunction

syn keyword gapMethsel	InstallMethod InstallOtherMethod NewType Objectify 
syn keyword gapMethsel	NewFamily InstallTrueMethod
syn keyword gapMethsel  InstallGlobalFunction ObjectifyWithAttributes
syn keyword gapMethsel  BindGlobal BIND_GLOBAL InstallValue
" CHEVIE util
syn keyword gapMethsel  NewMethod

syn keyword gapOperator	and div in mod not or

syn keyword gapFunction	function -> return local end Error 
syn keyword gapConditional	if else elif then fi
syn keyword gapRepeat		do od for while repeat until
syn keyword gapOtherKey         Info Unbind IsBound

syn keyword gapBool         true false fail
syn match  gapNumber		"-\=\<\d\+\>\/"
syn match  gapListDelimiter	"[][]"
syn match  gapParentheses	"[)(]"
syn match  gapSublist	"[}{]"

"hilite
" this is very much dependent on personal taste, must add gui case if you
" use gvim
"hi gapString ctermfg=2
"hi gapFunction  ctermfg=1
"hi gapDeclare  cterm=bold ctermfg=4
"hi gapMethsel  ctermfg=6
"hi gapOtherKey  ctermfg=3
"hi gapOperator cterm=bold ctermfg=8
"hi gapConditional cterm=bold ctermfg=9
"hi gapRepeat cterm=bold ctermfg=12
"hi gapComment  ctermfg=4
"hi gapTodo  ctermbg=2 ctermfg=0
"hi link gapTTodoComment  gapTodo
"hi link gapTodoComment	gapComment
"hi gapNumber ctermfg=5
"hi gapBool ctermfg=5
"hi gapChar ctermfg=3
"hi gapListDelimiter ctermfg=8
"hi gapParentheses ctermfg=12
"hi gapSublist ctermfg=14
"hi gapFunLine ctermbg=3 ctermfg=0
"hi Folded ctermbg=6 ctermfg=0

hi def link gapString         String
hi def link gapFunction       Function 
hi def link gapDeclare        Special
hi def link gapMethsel        Special
hi def link gapOtherKey       Special
hi def link gapOperator       Operator
hi def link gapConditional    Conditional 
hi def link gapRepeat         Repeat    
hi def link gapComment        Comment
hi def link gapTodo           Todo
hi def link gapTTodoComment   gapTodo
hi def link gapTodoComment	  gapComment
hi def link gapNumber         Number
hi def link gapBool           Boolean
hi def link gapChar           Character
hi def link gapListDelimiter  Delimiter
hi def link gapParentheses    Special
hi def link gapSublist        Special 
hi def link gapFunLine        Function

syn sync maxlines=500
let b:current_syntax = "gap"

