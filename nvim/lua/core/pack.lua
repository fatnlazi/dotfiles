local u = require('core.util')
local packer = u.require('packer')
local packer_url = 'https://github.com/wbthomason/packer.nvim'
local packer_path = u.data_path..'/site/pack/packer/start/packer.nvim'
local packer_bootstrap = false

if not packer then
  if #u.glob(packer_path) == 0 then
    vim.cmd('!git clone --depth 1 '..packer_url..' '..packer_path)
    packer_bootstrap = true
  end
  vim.cmd('packadd packer.nvim')
  packer = u.require('packer')
  if not packer then
    vim.notify('packer download failed!', vim.log.ERROR)
    return
  end
end

packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float {
        border = 'rounded',
      }
    end,
  },
}

packer.reset()

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use {
    'catppuccin/nvim',
    as = 'catppuccin',
  }
  use 'neovim/nvim-lspconfig'
  use {
    'folke/trouble.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
      'folke/lsp-colors.nvim',
    },
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = {
      'nvim-treesitter/nvim-treesitter-context',
      'nvim-treesitter/nvim-treesitter-refactor',
      -- 'nvim-treesitter/nvim-treesitter-textobjects',
    },
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      -- 'nvim-telescope/telescope-fzf-native.nvim',
    },
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'lukas-reineke/cmp-rg',
      'tzachar/cmp-fuzzy-path',
    },
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'mfussenegger/nvim-dap'
  use {
    'romgrk/barbar.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }
  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
  }

  if packer_bootstrap then
    packer.sync()
  end
end)
