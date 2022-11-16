return require('packer').startup(function(use)
    use("wbthomason/packer.nvim")
    use("sbdchd/neoformat")

	-- Colors
	use 'chriskempson/base16-vim'
    use 'tek256/simple-dark'

	-- Automatically changes line numbers when they don't make sense
	use 'jeffkreeftmeijer/vim-numbertoggle'

	-- Functionality for commenting code
	use 'tomtom/tcomment_vim'

	-- Shows git diff info in the gutter
	use 'airblade/vim-gitgutter'

	-- Telescope for quick file access
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use "ThePrimeagen/harpoon"

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

    use 'nvim-lua/completion-nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-context'

	use {
	  "folke/todo-comments.nvim",
	  requires = "nvim-lua/plenary.nvim",
	}

	-- Lua Line, requires custom font
	-- use {
	--  	'nvim-lualine/lualine.nvim',
  	-- 	 requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	-- }
end)
