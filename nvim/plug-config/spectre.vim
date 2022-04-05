nnoremap <leader>ff <cmd>lua require('spectre').open()<CR>
vnoremap <leader>ff <cmd>lua require('spectre').open_visual({select_word=true})<CR>

lua << EOF
require('spectre').setup({
  mapping={
    ['toggle_line'] = {
        map = "x",
        cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
        desc = "toggle current item"
    },
    ['run_replace'] = {
        map = "<leader>R",
        cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
        desc = "replace all"
    }
  }
})
EOF
