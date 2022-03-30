let g:test#javascript#runner = 'jest'
let test#strategy = "neovim"
let test#neovim#term_position = "vert"

nmap <silent> <leader>to :TestNearest<CR>
nmap <silent> <leader>tw :TestNearest --watch<CR>
