let s:save_cpo = &cpo
set cpo&vim

if exists('g:loaded_jskotobuki')
  finish
endif

let g:loaded_jskotobuki = 1

command! -nargs=0 NoKotobuki call jskotobuki#changeKotobukiState(0)
command! -nargs=0 Kotobuki   call jskotobuki#changeKotobukiState(1)

let &cpo = s:save_cpo
unlet s:save_cpo
