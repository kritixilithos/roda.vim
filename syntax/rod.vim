syntax keyword RODAliteral TRUE FALSE ENV
highlight default link RODAliteral Constant

syntax match RODAnumber /\d\+/
highlight default link RODAnumber Number

syntax match RODAfloat /\d\+\.\d\+/
highlight default link RODAfloat Float

syntax region RODAstring start=+"+  skip=+\\"+  end=+"+
highlight default link RODAstring String

syntax region RODAcomment start=+\/\*+  end=+*\/+
highlight default link RODAcomment Comment

syntax keyword RODAconditional if done do else
highlight default link RODAconditional Conditional

syntax keyword RODArepeat for while
highlight default link RODArepeat Repeat

syntax keyword RODAstatement return break
highlight default link RODAstatement Statement

syntax match RODAoperator /[\[\]|#_\*()${}~]\|\.\.\.\?\|[!><]=\?\|[+\*\/\-~\.]\?=\|:\(\w\)\@!/
highlight default link RODAoperator Operator

syntax keyword RODAType boolean list map number string integer floating namespace
highlight default link RODAType Type
