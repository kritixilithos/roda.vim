" Vim syntax file
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

syntax region RODAbackString start=+`+ end=+`+
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

syntax match RODAshebang /^#!.\+/
highlight default link RODAshebang RODAcomment

syntax region RODAcomment start=+\/\*+  end=+*\/+ contains=RODAtodo
highlight default link RODAcomment Comment

syntax keyword RODAoperatorKeyword is reflect typeof
highlight default link RODAoperatorKeyword RODAoperator

highlight default link RODAoperator Operator

syntax keyword RODAtype boolean list map number string integer floating namespace
highlight default link RODAtype Type

syntax match RODAidentifier /\(^\s*\)\zs\(\w*\)\ze\(\s*:=\)/
highlight default link RODAidentifier Identifier

syntax keyword RODAtodo TODO FIXME contained
highlight default link RODAtodo TODO

syntax keyword RODAcommand assignGlobal assignGlobalType assignType bufferedExec bytesToString cd chr count createGlobal createGlobalType createType currentTime error errprint exec exportGlobal exportGlobalType false fileExists fileLength filePermissions getenv head identity import importNamespace indexOf interleave isDirectory isFile json keys loadResourceLines localImport localImportNamespace lowerCase ls match mimeType name ord parseFloating parseInteger peek print pull push pwd randomBoolean randomFloating randomInteger randomize readLines replace require safeLocalImport saveResource search seq server shift sort split splitMany stream stringToBytes strsize tail thread true tryPeek tryPull undefine uniq unorderedCount unorderedUniq upperCase writeStrings
highlight default link RODAcommand Statement
