scriptencoding utf-8
if exists('loaded_findroot_vim') || &cp || v:version < 700
  finish
endif

let g:loaded_findroot_vim = 1

" vim pattern
function! g:FindRootWindow(pattern)
  return findroot#window(a:pattern)
endfunction
