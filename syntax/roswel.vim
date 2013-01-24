" Vim syntax file
" Language: ROsWeL 
" Maintainer: Dariusz Dwornikowski
" Latest Revision: 24 Jan 2013

" runtime! syntax/java.vim 
" unlet b:current_syntax 

syn match roswelString '\".*\"'
syn region longcomment  start='\/\*' end='\*\/' 
syn region javaCode   start='`' end='`' 
" contains=javaStatement,javaFuncDef,javaVarArg,JavaBraces,javaString,javaNumber,javaBoolean,javaType,javaBranch,javaBraces,javaTypedef,javaOperator
syn region javaImport   start='``' end='``' 
syn match roswelVariable '\<\u\w*'
syn match functionCall '\<\l\w*'

syn keyword basicKeywords onGet onPost post get put onPut onHead head put option onOption 
syn match basicOperator ';'
syn match basicOperator '>'
syn match basicOperator '\.'
syn match basicOperator ':'
syn match basicOperator '-'
syn match basicOperator '*'
syn match basicOperator '+'

if exists("b:current_syntax")
  finish
endif
hi def link basicKeywords Statement
hi def link basicOperator Operator
hi def link longcomment Comment
" hi def link constant Constant
hi def link javaImport Include
hi def link functionCall Constant
hi def link javaCode Include
hi def link roswelString String
let b:current_syntax = "roswel"
