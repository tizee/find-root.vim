let s:is_win = has('win32') || has('win64')
let s:path_sep = s:is_win ? '\' : '/' 

" vim pattern
function! findroot#window(pattern)
  if exists("*readdir") || has("patch-8.1.1120") " vim support readdir
    let l:cwd = split(expand("%:p:h"),s:path_sep)
    while len(l:cwd) > 1
      let l:current_path = s:is_win? "": s:path_sep 
      let l:current_path = l:current_path . join(l:cwd,s:path_sep)
      let l:files = readdir(l:current_path)
      let l:files = filter(l:files,{_,val -> matchstr(val,a:pattern) != ''})
      if len(l:files) > 0
        return current_path . s:path_sep . l:files[0]
      endif
      call remove(l:cwd,-1)
    endwhile
    return ""
  endif
endfunction
