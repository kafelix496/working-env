let g:test#javascript#runner = 'jest'
let test#strategy = "neovim"
let test#neovim#term_position = "vert"

" Test One
nmap <silent> <leader>to :TestNearest<CR>
" Test Watch
nmap <silent> <leader>tw :TestNearest --watch<CR>
