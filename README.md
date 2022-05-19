# WeakVim
I _love_ Neovim. However, I think many parts of it could be easier to configure or understand, especially when it comes to LSPs. There's a ton of plugins that fill the gap, but some of them are sparse in documentation. There's also distributions like LunarVim that attempt to add a Doom Emacs-like layer above.

My approach is a bit different, simply giving an opinionated, modular, and documented configuration that an interested user can easily modify to their needs. It makes use of the most helpful plugins I've encountered to create the best experience I could muster while retaining an air of simplicity. 

I hope this is helpful to someone out there!

# Contents
All lua files in `lua/` are pulled into the `init.lua` which I tried to keep fairly minimal, mostly just bootstrapping packer and then pulling in each 'module' I've written.

To get started, clone the contents here to your `~/.config/nvim/` and run `:PackerInstall`. You can also use the `install.sh` to move the files. 

Here's a brief description of each file and it's purpose.

- `aerial-config.lua`: Configuration for the Aerial plugin, which shows an outline of the current file.
- `appearance.lua`: Configure the appearance of Neovim, mostly theming and syntax highlighting configuration.
- `cmp-config.lua`: Configure cmp, a completion plugin
- `editor.lua`: General editor behavior. Pretty brief, kind of a catch-all for stuff that doesn't fit elsewhere.
- `indent-config.lua`: Configuration for the `indent-blankline` plugin.
- `lualine-config.lua`: Configuration for `lualine` plugin.
- `packer-setup.lua`: Code that bootstraps packer.
- `plugins.lua`: Declares my plugins for packer.
- `telescope-config.lua`: Configuration for `telescope` plugin.

## Telescope vs. LSP
You may notice that the bindings for some LSP features are defined in `telescope-config` rather than
`completion` and use Telescope to call them. This is because Telescope provides some nice menus 
for various LSP features such as `show references`. Therefore, I decided to split off any LSP 
commands that provide a 'menu' to be handled by Telescope, since it generally looks nice than a 
buffer pop-up at the bottom.

# Default Bindings
Most bindings use the default leader key, SPC. A major factor in selecting bindings was to try and keep
them mnemonic.

## Telescope
- `<leader>ff` to open a file finder.
- `<leader>fg` to open a fuzzy finder (ripgrep).
- `<leader>fb` to open a buffer list.
- `<leader>fh` to open a searchable help menu.
- `<leader>gr` to search references to the symbol under the cursor.
- `<leader>s` to search the document's symbols.

## Aerial (file outline)
- `<leader>tb` to toggle Aerial outline of symbols.

## LSP / Completion
My configuration uses the default `nvim-lsp-setup` bindings. Copied below:

- `<leader>k` = Show pop-up of symbol under the cursor (generally, documentation).
- `<leader>gd` = Go to symbol definition.
- `<leader>gD` = Go to symbol declaration.
- `<leader>rn` = Rename symbol.
- `<leader>ca` = Show code actions in a hover window.
- `<leader>fo` = Format selection.
