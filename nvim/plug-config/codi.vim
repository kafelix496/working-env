" highlight CodiVirtualText guifg=cyan

let g:codi#virtual_text_prefix = "RESULT : "

" function! s:pp_ts(line)
"  " Strip escape codes
"   return substitute(a:line, "\<esc>".'\[\d\(\a\|\dm\)', '', 'g')
" endfunction

" let g:codi#interpreters = {
"   \ 'typescript': {
"   \   'preprocess': function('s:pp_ts')
"   \  }
"   \ }

let g:codi#aliases = {
  \ 'javascript.jsx': 'javascript',
  \ 'typescript.tsx': 'typescript'
  \ }

let g:codi#log="/Users/felix/.config/nvim/codi.log"
