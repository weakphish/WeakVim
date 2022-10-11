-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      custom_only = false,
      list = {
        { key = "u", action = "dir_up" },
        { key = "t", action = "tabnew" },
        { key = "e", action = "edit", action_cb = edit_or_open },
        { key = "v", action = "vsplit", action_cb = vsplit },
        { key = "h", action = "close_node" },
        { key = "H", action = "collapse_all", action_cb = collapse_all }
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

