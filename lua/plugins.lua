local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end



return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Information
    use 'nanotee/nvim-lua-guide'
    
	-- theme
    use 'joshdick/onedark.vim'
    use 'morhetz/gruvbox'
    use 'sainnhe/gruvbox-material'
   
	-- Status Line and Bufferline
	use 'glepnir/galaxyline.nvim'

	-- lsp
	use 'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'
	use 'onsails/lspkind-nvim'
	use 'kosayoda/nvim-lightbulb'
	use 'mfussenegger/nvim-jdtls'
	use 'kabouzeid/nvim-lspinstall'

	-- Autocomplete
	use 'mattn/emmet-vim'

	-- Treesitter
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use 'nvim-treesitter/nvim-treesitter-refactor'
	use 'nvim-treesitter/playground'
	use 'p00f/nvim-ts-rainbow'
	use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}

	-- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-media-files.nvim'

	-- highlighted-yank
	use 'machakann/vim-highlightedyank'

	-- Registers
	use 'gennaro-tedesco/nvim-peekup'

	-- Navigation
	use 'phaazon/hop.nvim'

	-- Ranger
	use 'kevinhwang91/rnvimr'

	-- Icons
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'
	
	-- Explorer
	use 'kyazdani42/nvim-tree.lua'
	
	-- Commenting code
	use 'terrortylor/nvim-comment'

	-- which-key
	use 'liuchengxu/vim-which-key'

	-- floating terminal
	use 'voldikss/vim-floaterm'

    -- Text Navigation
	use 'unblevable/quick-scope'
		    
    -- zen mode
    use 'junegunn/goyo.vim'

    -- Interactive code
    use 'metakirby5/codi.vim'

end)
