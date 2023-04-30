vim.cmd [[
  augroup format_on_save
    autocmd! 
    autocmd BufWritePre * lua vim.lsp.buf.format({ async = false }) 
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown nmap <buffer> <Space> :VimwikiToggleListItem<CR>
    autocmd FileType markdown vmap <buffer> <Space> :VimwikiToggleListItem<CR>
  augroup end
]]
