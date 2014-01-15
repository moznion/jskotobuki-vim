let s:save_cpo = &cpo
set cpo&vim

function jskotobuki#changeKotobukiState(state)
  let g:jskotobukiState = a:state
  syntax off
  syntax on
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
