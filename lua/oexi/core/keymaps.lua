vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap -- alias for conciseness

-- Some defaults recommended:
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- Wrapping
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Add keymaps here:
-- System clipboard key maps
keymap.set('v', '<leader>y', '"+y', { noremap = true, silent = true })
keymap.set('n', '<leader>y', '"+y', { noremap = true, silent = true })
keymap.set('n', '<leader>yy', '"+yy', { noremap = true, silent = true })
keymap.set('v', '<leader>p', '"+p', { noremap = true, silent = true })
keymap.set('v', '<leader>P', '"+P', { noremap = true, silent = true })
keymap.set('n', '<leader>p', '"+p', { noremap = true, silent = true })
keymap.set('n', '<leader>P', '"+P', { noremap = true, silent = true })
