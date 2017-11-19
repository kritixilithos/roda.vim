" Vim indent file
" Language:	Röda
" Maintainer:	Kritixi Lithos
" Last Change:	2017 Nov 19


if exists("b:did_indent")
	finish
endif
let b:did_indent = 1

setlocal indentexpr=GetRodaIndent()
setlocal indentkeys+==catch,=done,=else,=}

" TODO: combine lines that share an if-statement in one big regex
function! GetRodaIndent()
	let lnum = prevnonblank(v:lnum - 1)
	let ind = indent(lnum)
	let line = getline(lnum)

	" indent if line ends with do or else or catch exceptionName or a new block
	if line =~ 'do\s*$'
		let ind = ind+&sw
	elseif line =~ '\(else\|{\)\s*$'
		let ind = ind+&sw
	elseif line =~ 'catch \w\+\s*$'
		let ind = ind+&sw
	elseif line =~ '[\s*$'
		let ind = ind+&sw
	endif

	" unindent if line begins done or else or a closing block or catch exceptionName
	if getline(v:lnum) =~ '^\s*\(done\|else\|}\|]\)'
		let ind = ind - &sw
	elseif getline(v:lnum) =~ '^\s*catch\s*\w\+'
		let ind = ind - &sw
	endif

	return ind
endfunction
