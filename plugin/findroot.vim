scriptencoding utf-8
if exists('loaded_findfirst_vim') || &cp || v:version < 700
  finish
endif

let g:loaded_findfirst_vim = 1

" vim pattern
function! g:FindFirst(pattern)
  return findfirst#find(a:pattern)
endfunction
