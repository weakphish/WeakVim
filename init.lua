-- Setup Packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Set mapleader
vim.g.mapleader = " "

-- Load plugins
require('packer_setup')
require('plugins')
-- Editor appearance / behavior
require('appearance')
require('editor')
-- Plugin Configurations
require('aerial-config')
require('cmp-config')
require('indent-config')
require('lualine-config')
require('telescope-config')
-- Completion
require('completion')
