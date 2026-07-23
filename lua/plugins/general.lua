return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate'
	},
	{
    	'nvim-telescope/telescope.nvim', version = '*',
    	dependencies = {
        	-- optional but recommended
        	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    	},
	},
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
	},
	{
    	"kdheepak/lazygit.nvim",
    	lazy = true,
    	cmd = {
        	"LazyGit",
        	"LazyGitConfig",
        	"LazyGitCurrentFile",
        	"LazyGitFilter",
        	"LazyGitFilterCurrentFile",
    	},
    	-- setting the keybinding for LazyGit with 'keys' is recommended in
    	-- order to load the plugin when the command is run for the first time
    	keys = {
        	{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    	}
	},	
	{
		"mason-org/mason.nvim",
    	opts = {}
	},
	{
   		"neovim/nvim-lspconfig",
    	dependencies = {
      		"mason.nvim",
      		{ "williamboman/mason-lspconfig.nvim", config = function() end },
		},
	}
}
