-- Ruler at 100
vim.o.cc = '100'

-- Numbering
vim.o.relativenumber = true
vim.o.number = true

-- Colorscheme
vim.cmd([[
  " Important!!
  if has('termguicolors')
      set termguicolors
  endif
]])

vim.g.sonokai_better_performance = 1
vim.g.sonokai_style = "shusia"
vim.g.vscode_style = "dark"

vim.cmd[[
  colorscheme vscode 
]]

-- Add extra Go highlights
vim.g.go_highlight_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_build_constraints = 1
vim.g.go_highlight_generate_tags = 1
vim.g.go_doc_popup_window=1

