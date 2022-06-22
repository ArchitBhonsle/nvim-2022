require('packer').startup(function(use)
  use('nvim-lua/plenary.nvim')
  use('kyazdani42/nvim-web-devicons')
  use {
    'lewis6991/impatient.nvim',
    config = function()
      require('impatient').enable_profile()
    end,
  }

  use { 'catppuccin/nvim', as = 'catppuccin' }
  use { 'kyazdani42/nvim-tree.lua', tag = 'nightly' }
  use('nvim-lualine/lualine.nvim')
  use('folke/which-key.nvim')

  use('L3MON4D3/LuaSnip')
  use('rafamadriz/friendly-snippets')

  use('neovim/nvim-lspconfig')
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('saadparwaiz1/cmp_luasnip')

  use('jose-elias-alvarez/null-ls.nvim')

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use('JoosepAlviste/nvim-ts-context-commentstring')
  use('p00f/nvim-ts-rainbow')

  use('windwp/nvim-autopairs')
  use('numToStr/Comment.nvim')
  use('lukas-reineke/indent-blankline.nvim')
  use('norcalli/nvim-colorizer.lua')
end)
