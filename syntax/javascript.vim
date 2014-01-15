let s:save_cpo = &cpo
set cpo&vim

if !exists('g:jskotobukiCharacter')
  let g:jskotobukiCharacter = '寿'
endif

if !exists('g:jskotobukiState') || g:jskotobukiState == 1
  setlocal conceallevel=2

  let s:eval_code = "syntax keyword javaScriptLambda function conceal cchar=" . g:jskotobukiCharacter
  execute(s:eval_code)

  highlight clear Conceal
  highlight link Conceal Identifier
  highlight link javaScriptLambda Identifier
endif

let &cpo = s:save_cpo
unlet s:save_cpo
