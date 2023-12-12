local M = {
  "junegunn/fzf.vim",
  dependencies = {
    {
      "junegunn/fzf"
    }
  }
}

M.config = function()
  vim.cmd [[
    let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-h': 'split',
      \ 'ctrl-v': 'vsplit' }

    let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9, 'yoffset': 0.5, 'xoffset': 0.5 } }
    let g:fzf_preview_window = ['down:75%']

    let $FZF_DEFAULT_OPTS = '--layout=reverse  --inline-info'
    let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
  ]]
end

return M
