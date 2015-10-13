" Vim syntax file
" Language: CELL
" Maintainer: Simon Friedmann

if exists("b:current_syntax")
	finish
endif

syn keyword basicLanguageKeywords def mod namespace once periodic process socket
syn keyword basicLanguageKeywords const for inst in table template var while
syn keyword builtinTypes int float bool string
syn keyword cellBoolean true false
syn keyword cellConditional if else

syn match cellInlineComment ://.*$:
syn region cellBlockComment start=:/\*: end=:\*/: fold

syn match cellNumbers "\<\d\|\.\d" contains=cellNumber display transparent
syn match cellNumber "\d\+" display contained
syn match cellNumber "\.\d\+" display contained

syn region cellBlock start="{" end="}" transparent fold



let b:current_syntax = "cell"

hi def link basicLanguageKeywords Keyword
hi def link builtinTypes Type
hi def link cellInlineComment Comment
hi def link cellBlockComment Comment
hi def link cellBoolean Boolean
hi def link cellConditional Conditional
hi def link cellNumbers Number
hi def link cellNumber Number
