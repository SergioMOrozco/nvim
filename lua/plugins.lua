local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    --requires = {
    --  'kyazdani42/nvim-web-devicons', -- optional, for file icons
    --},
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use 'neovim/nvim-lspconfig'

  -- autocompletion for nvim (Lua and Vim)
  use 'hrsh7th/nvim-compe'

  -- snippet that supports LSP snippet format
  use 'hrsh7th/vim-vsnip'

end)
