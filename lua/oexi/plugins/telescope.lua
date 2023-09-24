return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make',
			cond = function()
				return vim.fn.executable 'make' == 1
			end,
		},
	},
	config = function()
		local telescope = require('telescope')
		-- local actions = require('telescope.actions')
		local builtin = require('telescope.builtin')
		local themes = require('telescope.themes')

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						['<C-u>'] = false,
						['<C-d>'] = false,
					},
				},
			},
		})

		telescope.load_extension('fzf')

		local keymap = vim.keymap --alias for conciseness

                -- See `:help telescope.builtin`
		keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
		keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
		keymap.set('n', '<leader>/', function()
			-- You can pass additional configuration to telescope to change theme, layout, etc.
			builtin.current_buffer_fuzzy_find(themes.get_dropdown {
				winblend = 10,
				previewer = false,
			})
		end, { desc = '[/] Fuzzily search in current buffer' })

		keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })
		keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
		keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
		keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
		keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
		keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
		keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]resume' })
	end,
}
