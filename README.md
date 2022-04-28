My configuration for Neovim. All lua files in `lua/` are pulled into the `init.lua` which I tried to keep fairly minimal, mostly just bootstrapping packer and then pulling in each 'module' I've written.

To get started, clone the contents here to your `~/.config/nvim/` and run `:PackerInstall`

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
