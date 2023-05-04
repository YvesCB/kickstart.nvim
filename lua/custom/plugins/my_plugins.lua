vim.cmd([[
	let g:neo_tree_remove_legacy_commands = 1

	let g:vimtex_view_method = 'mupdf'
	let g:vimtex_compiler_method = 'xelatex'
]])

return {
	'tpope/vim-surround',
	{ 'rrethy/vim-hexokinase', run = 'make hexokinase' },
	{
		'ggandor/leap.nvim',
		config = function()
			require('leap').add_default_mappings()
		end
	},
	{
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup {
				check_ts = true,
				ts_config = {
					lua = { 'string', 'source' },
					javascript = { 'string', 'template_string' },
				},
				disable_filetypes = { 'TelescopePrompt' },
			}
		end
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require('neo-tree').setup {}
		end,
	},
	{
		'lervag/vimtex',
		-- config = function()
		-- 	require('vimtex').setup {
		-- 		view_method = 'mupdf',
		-- 		compiler_method = 'xelatex',
		-- 	}
		-- end
	}
}
