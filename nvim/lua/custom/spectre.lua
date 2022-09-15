local status_ok, spectre = pcall(require, "spectre")
if not status_ok then
  return
end

spectre.setup({
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

