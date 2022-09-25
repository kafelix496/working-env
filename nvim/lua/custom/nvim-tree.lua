local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = false,
  },
  view = {
    mappings = {
      list = {
        { key = "<ESC>", cb = tree_cb "close" },
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "t", cb = tree_cb "tabnew" },
      },
    },
    float = {
      enable = true,
      open_win_config = function()
        local screen_w = vim.opt.columns:get()
        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
        local _width = screen_w * 0.9
        local _height = screen_h * 0.9
        local width = math.floor(_width)
        local height = math.floor(_height)
        local center_y = ((vim.opt.lines:get() - _height) / 2) - vim.opt.cmdheight:get()
        local center_x = (screen_w - _width) / 2
        local layouts = {
          center = {
            anchor = 'NW',
            relative = 'editor',
            border = 'single',
            row = center_y,
            col = center_x,
            width = width,
            height = height,
          },
        }

        return layouts.center
      end,
    },
  },
}
