-- Bindings
-- Find files
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
