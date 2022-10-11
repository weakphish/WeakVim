-- Bindings
-- Find files
--[[
vim.api.nvim_set_keymap(
    "n",
    "<leader>ff",
    ":Telescope find_files<cr>",
    { noremap = true}
)
-- Live Grep
vim.api.nvim_set_keymap(
    "n",
    "<leader>fg",
    ":Telescope live_grep<cr>",
    { noremap = true}
)
-- Find buffers
vim.api.nvim_set_keymap(
    "n",
    "<leader>fb",
    ":Telescope buffers<cr>",
    { noremap = true}
)
-- Show help tags
vim.api.nvim_set_keymap(
    "n",
    "<leader>fh",
    ":Telescope help_tags<cr>",
    { noremap = true}
)
-- Show document symbols in Telescope
vim.api.nvim_set_keymap(
    "n",
    "<leader>fs",
    ":Telescope lsp_document_symbols<cr>",
    { noremap = true}
)
-- Show symbol references in Telescope
vim.api.nvim_set_keymap(
    "n",
    "<leader>fr",
    ":Telescope lsp_references<cr>",
    { noremap = true}
)

-- Show all TODO comments
vim.api.nvim_set_keymap(
  "n",
  "<leader>to",
  ":TodoTelescope<cr>",
  {noremap = true}
)
--]]
-- This is your opts table
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }

      -- pseudo code / specification for writing custom displays, like the one
      -- for "codeactions"
      -- specific_opts = {
      --   [kind] = {
      --     make_indexed = function(items) -> indexed_items, width,
      --     make_displayer = function(widths) -> displayer
      --     make_display = function(displayer) -> function(e)
      --     make_ordinal = function(e) -> string
      --   },
      --   -- for example to disable the custom builtin "codeactions" display
      --      do the following
      --   codeactions = false,
      -- }
    }
  }
}
-- To get ui-select loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("ui-select")
