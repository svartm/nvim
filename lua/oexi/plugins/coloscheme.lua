return {
	--{
		--'navarasu/onedark.nvim',
		--priority = 1000,
		-- config = function()
			--vim.cmd.colorscheme 'onedark'
		--end,
	--}
	{
		'svartm/boo-colorscheme-nvim',
		--name = 'boo-oexi',
		priority = 1000,
		config = function()
			require('boo-colorscheme').use({
				italic = false,
				theme = 'crimson-moonlight'
			})
		end
	},
	{
		'nyoom-engineering/oxocarbon.nvim',
		priority = 1000,
	},
	{
		'lunarvim/colorschemes',
		priority = 1000,
	},
	{
		'bluz71/vim-moonfly-colors',
		name = 'moonfly',
		lazy = false,
		priority = 1000,
	},
}
