require('packer').startup(function(use)
	-- basics
	use('wbthomason/packer.nvim')
	use('nvim-lua/plenary.nvim')
	use('kyazdani42/nvim-web-devicons')
	use({
		'lewis6991/impatient.nvim',
		config = function() require('impatient').enable_profile() end,
	})

	-- looks
	use({ 'catppuccin/nvim', as = 'catppuccin' })
	use('folke/which-key.nvim')
	use({ 'kyazdani42/nvim-tree.lua', tag = 'nightly' })
	use('nvim-lualine/lualine.nvim')
	use('akinsho/bufferline.nvim')
	use('fladson/vim-kitty')

	-- snippets
	use('L3MON4D3/LuaSnip')
	use('rafamadriz/friendly-snippets')

	-- mason
	use('williamboman/mason.nvim')
	use('williamboman/mason-lspconfig.nvim')

	-- lsp
	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	use('hrsh7th/cmp-buffer')
	use('hrsh7th/cmp-path')
	use('saadparwaiz1/cmp_luasnip')
	use('jose-elias-alvarez/null-ls.nvim')
	use('simrat39/rust-tools.nvim')
	use('RRethy/vim-illuminate')

	-- dap

	-- treesitter
	use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
	use('JoosepAlviste/nvim-ts-context-commentstring')
	use('p00f/nvim-ts-rainbow')
	use('nvim-treesitter/nvim-treesitter-textobjects')

	-- git
	use({ 'ruifm/gitlinker.nvim', config = function() require('gitlinker').setup() end })

	-- support
	use({
		'rmagatti/auto-session',
		config = function() require('auto-session').setup() end,
	})
	use('nvim-telescope/telescope.nvim')
	use('kylechui/nvim-surround')
	use('phaazon/hop.nvim')
	use('windwp/nvim-autopairs')
	use('numToStr/Comment.nvim')
	use('lukas-reineke/indent-blankline.nvim')
	use('norcalli/nvim-colorizer.lua')
end)
