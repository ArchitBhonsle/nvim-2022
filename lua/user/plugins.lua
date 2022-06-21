require('packer').startup(function(use)
  use('nvim-lua/plenary.nvim')

  use({
    'catppuccin/nvim',
    as = 'catppuccin',
  })
  use({
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons',
      },
      tag = 'nightly',
  })
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  })
  use('folke/which-key.nvim')

  use('L3MON4D3/LuaSnip')

  use('neovim/nvim-lspconfig')
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('saadparwaiz1/cmp_luasnip')

  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use('JoosepAlviste/nvim-ts-context-commentstring')

  use('windwp/nvim-autopairs')
  use('numToStr/Comment.nvim')
end)
