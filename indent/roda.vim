" Vim indent file
" Language:	Röda
" Maintainer:	Kritixi Lithos
" Last Change:	2017 Mar 25


if exists("b:did_indent")
	finish
endif
let b:did_indent = 1

setlocal indentexpr=GetRodaIndent()
setlocal indentkeys+==done,=else,=}

function! GetRodaIndent()
	let lnum = prevnonblank(v:lnum - 1)
	let ind = indent(lnum)
	let line = getline(lnum)

	" indent if line ends with do
	if line =~ 'do\s*$'
		let ind = ind+&sw
	elseif line =~ '\(else\|{\)\s*$'
		let ind = ind+&sw
	endif

	" unindent if line begins done or else
	if getline(v:lnum) =~ '\s*\(done\|else\|}\)\s*$'
		let ind = ind - &sw
	endif

	return ind
endfunction
