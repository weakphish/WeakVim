require("aerial").setup {
  backends = { "lsp", "treesitter", "markdown" },
  close_behavior = "auto",
  min_width = 40,
  max_width = 40,
  show_guides = true,
  filter_kind = false,
}
