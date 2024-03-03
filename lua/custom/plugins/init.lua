-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.cmd([[
	let g:neo_tree_remove_legacy_commands = 1

	let g:vimtex_view_method = 'zathura'
	let g:vimtex_compiler_method = 'latexmk'
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
	},
	'simrat39/rust-tools.nvim',
}
