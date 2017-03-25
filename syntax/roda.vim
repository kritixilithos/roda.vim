" Vim indent file
" Language:	Röda
" Maintainer:	Kritixi Lithos
" Last Change:	2017 Mar 25

syntax keyword RODAconstant ENV STDIN STDOUT STDERR
highlight default link RODAconstant Constant

syntax keyword RODAboolean TRUE FALSE
highlight default link RODAboolean Boolean

syntax match RODAnumber /-\?\d\+/
highlight default link RODAnumber Number

syntax match RODAfloat /-\?\d\+\.\d\+\([eE][+-]\d\+\)\?/
highlight default link RODAfloat Float

syntax region RODAstring start=+"+  skip=+\\"+  end=+"+
highlight default link RODAnormString RODAstring

syntax region RODAbackString start=+`+  skip=+\\`+  end=+`+
highlight default link RODAbackString RODAstring

highlight default link RODAstring String

syntax keyword RODAconditional if done do else unless
highlight default link RODAconditional Conditional

syntax keyword RODArepeat for while until
highlight default link RODArepeat Repeat

syntax keyword RODAstatement return break continue
highlight default link RODAstatement Statement

syntax keyword RODAexception try catch
highlight default link RODAexception Exception

syntax keyword RODAkeyword in or not del record and function
highlight default link RODAkeyword Keyword

syntax match RODAoperatorSymbol /[\[\]|#_\*()${}~&\/]\|\.\.\.\?\|[!><]=\?\|[+\*\/\-~\.]\?=\|:\(\w\)\@!\|:=/
highlight default link RODAoperatorSymbol RODAoperator

syntax region RODAcomment start=+\/\*+  end=+*\/+
highlight default link RODAcomment Comment

syntax keyword RODAoperatorKeyword is reflect typeof
highlight default link RODAoperatorKeyword RODAoperator

highlight default link RODAoperator Operator

syntax keyword RODAtype boolean list map number string integer floating namespace
highlight default link RODAtype Type

syntax match RODAidentifier /\(^\s*\)\zs\(\w*\)\ze\(\s*:=\)/
highlight default link RODAidentifier Identifier
