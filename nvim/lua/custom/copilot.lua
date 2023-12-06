vim.cmd [[imap <silent><script><expr> <C-l> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = true

vim.cmd [[imap <C-]> <Plug>(copilot-next)]]
