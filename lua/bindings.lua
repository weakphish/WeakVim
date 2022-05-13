-- Set mapleader
vim.g.mapleader = " "

-- Telescope
vim.api.nvim_set_keymap(
    "n",
    "<leader>ff",
    ":Telescope find_files<cr>",
    { noremap = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>fg",
    ":Telescope live_grep<cr>",
    { noremap = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>fb",
    ":Telescope buffers<cr>",
    { noremap = true}
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>fh",
    ":Telescope help_tags<cr>",
    { noremap = true}
)

-- Aerial
vim.api.nvim_set_keymap('n', '<leader>tb', '<cmd>AerialToggle!<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '{', '<cmd>AerialPrev<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '}', '<cmd>AerialNext<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '[[', '<cmd>AerialPrevUp<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', ']]', '<cmd>AerialNextUp<CR>', {noremap=true})
