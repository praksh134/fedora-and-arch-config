local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
      requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
  }
  use 'folke/tokyonight.nvim' 
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'ibhagwan/fzf-lua'
  use {
  'VonHeikemen/fine-cmdline.nvim',
  requires = {
    {'MunifTanjim/nui.nvim'}
  }
}
  use 'windwp/nvim-autopairs'
  use 'akinsho/bufferline.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'lewis6991/gitsigns.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'Shatur/neovim-ayu'
  use 'onsails/lspkind.nvim'
  use 'onsails/diaglist.nvim'
  use 'terrortylor/nvim-comment'
  use 'rcarriga/nvim-notify'
  use "yorik1984/lualine-theme.nvim"
  use "rebelot/kanagawa.nvim"
  use 'AlexvZyl/nordic.nvim'
  use 'bluz71/vim-moonfly-colors'
  use 'bluz71/vim-nightfly-colors'
  use 'windwp/windline.nvim'
  use 'freddiehaddad/feline.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
