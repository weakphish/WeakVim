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
- `bindings.lua`: Custom bindings. LSP bindings are found in `completion.lua` due to me not knowing a way to refactor the binding assignment out of the `on_attach` function found there.
- `editor.lua`: General editor behavior. Pretty brief, kind of a catch-all for stuff that doesn't fit elsewhere.
- `indent-config.lua`: Configuration for the `indent-blankline` plugin.
- `lualine-config.lua`: Configuration for `lualine` plugin.
- `nvim-tree-config.lua`: Configuration for the `nvim-tree` plugin.
- `packer-setup.lua`: Code that bootstraps packer.
- `plugins.lua`: Declares my plugins for packer.
