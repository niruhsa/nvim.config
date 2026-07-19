return {
	{
	"nvim-lua/plenary.nvim",
	opts = {},
	},
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate'
	},
	{
    	'nvim-telescope/telescope.nvim', version = '*',
    	dependencies = {
        	'nvim-lua/plenary.nvim',
        	-- optional but recommended
        	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    	},
	},
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
	},
}
