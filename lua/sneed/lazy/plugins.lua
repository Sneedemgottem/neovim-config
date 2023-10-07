return {
    { 'Mofiqul/vscode.nvim' },

	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{
		'nvim-treesitter/nvim-treesitter',
		init = function()
			pcall(vim.cmd, 'TSUpdate')
		end,
	},

	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end,
	},

	{
		"akinsho/toggleterm.nvim",
	},

	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		lazy = false,
		dependencies = {
			'neovim/nvim-lspconfig',
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-nvim-lsp',
			'L3MON4D3/LuaSnip',
		}
	},

	{
		'williamboman/mason.nvim',
		lazy = false,
		dependencies = {
			'williamboman/mason-lspconfig.nvim'
		},
		init = function()
			pcall(vim.cmd, 'MasonUpdate')
		end
	},
}
