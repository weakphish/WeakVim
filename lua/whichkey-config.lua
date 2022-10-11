local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local setup = {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  -- operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-j>", -- binding to scroll down inside the popup
    scroll_up = "<c-k>", -- binding to scroll up inside the popup
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}
which_key.setup(setup)

--------------------------------------------------------------------------------------------------
-- BINDINGS --------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
-- Bufferline stuff
which_key.register({
  ["<leader>l"] = {'<cmd>BufferLineCycleNext<cr>', "Next Buffer"},
  ["<leader>h"] = {'<cmd>BufferLineCyclePrev<cr>', "Previous Buffer"}
})

-- FIND Group
which_key.register({
  f = {
    name = "Find", -- Group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, 
    g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    d = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
    h = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
    s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
    r = { "<cmd>Telescope lsp_references<cr>", "Symbol References" },
    r = { "<cmd>Telescope registers<cr>", "Registers" },
    t = { "<cmd>TodoTelescope<cr>", "TODO" },
  }
}, {prefix = "<leader>"})

-- CODE Group
which_key.register({
  c = {
    name = "Code", -- Group name
    r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Action(s)" },
    f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },
  }
}, {prefix = "<leader>"})

which_key.register({
  ["<leader>k"] = {'<cmd>lua vim.lsp.buf.hover()<cr>', "Hover"}
})

-- GOTO Group
which_key.register({
  ["<leader>g"] = { name = "+Go to" },
  ['<leader>gD']= {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration"},
  ['<leader>gd'] = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition"},
})

--Toggle 
which_key.register({
  ["<leader>t"] = { name = "+Toggle" },
  ['<leader>tb']= {'<cmd>AerialToggle<cr>', "Aerial"},
  ['<leader>tn'] = {'<cmd>NvimTreeToggle<cr>', "NvimTree"},
  ['<leader>tg'] = {'<cmd>Gitsigns toggle_current_line_blame<cr>', "Git Blame"},
})
