" Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword redCommentTodo  TODO FIXME HACK
"syn match redLineComment    "--.*" contains=@Spell,redCommentTodo
"syn match redLineDocComment    "--\s*|.*" contains=@Spell,redCommentTodo
syn keyword redBuiltinType      decimal string
syn region redStringD start=+"+ skip=+\\\\\|\\"+ end=+"\|$+ 
syn region redStringS start=+'+ skip=+\\\\\|\\'+ end=+'\|$+ 
syn keyword redExternal         import export
syn keyword redTrait            trait
syn keyword redProtocol         protocol
syn keyword redPostcondition    post
syn keyword redPrecondition     pre
syn keyword redThis             this
syn keyword redClassDecl        satisfies
syn keyword redLet              let
syn keyword redReturn           return
syn keyword redConditional      if else
syn keyword redRepeat           in
syn match redFunction "([a-z][a-z0-9]*\s*)" contained nextgroup=redVars
syn region redVars start="(" end=")" contained contains=redParameters transparent keepend
syn match redParameters   "([a-z][a-z0-9]*)\s*:\s*([a-z][a-z0-9\.]*)" contained skipwhite

hi link redCommentTodo          Todo
"hi link redLineComment Comment
"hi link redLineDocComment SpecialComment
hi link redBuiltinType          StorageClass
hi link redStringD              String
hi link redStringS              String
hi link redExternal             Keyword
hi link redTrait                Keyword
hi link redProtocol             Keyword
hi link redPostcondition        Statement
hi link redPrecondition         Statement
hi link redThis                 Typedef
hi link redClassDecl            StorageClass
hi link redLet                  StorageClass
hi link redReturn               Statement
hi link redConditional          Conditional
hi link redRepeat               Repeat
hi link redParameters           Operator

