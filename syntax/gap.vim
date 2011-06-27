" Vim syntax file
" Language:	GAP
" Author:  Frank Lübeck,  highlighting based on file by Alexander Hulpke
" Maintainer:	Frank Lübeck
" Last change:	June 2001
" CVS version:  $Id: gap.vim,v 1.7 2001/10/31 08:40:19 gap Exp $
"

" Remove any old syntax stuff hanging around
syn clear

" comments
syn match gapComment "\(#.*\)*" contains=gapTodo,gapFunLine,@Spell

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
hi def link gapTodoComment    gapComment
hi def link gapNumber         Number
hi def link gapBool           Boolean
hi def link gapChar           Character
hi def link gapListDelimiter  Delimiter
hi def link gapParentheses    Special
hi def link gapSublist        Special
hi def link gapFunLine        Function

syn sync maxlines=500
let b:current_syntax = "gap"

