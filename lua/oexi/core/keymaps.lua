vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap -- alias for conciseness

-- Some defaults recommended:
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- Add keymaps here:
