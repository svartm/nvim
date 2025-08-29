vim.cmd("let g:netrw_liststyle = 3")

vim.g.have_nerd_font = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true

vim.o.hlsearch = false
vim.o.number = true --vi.wo?
vim.o.mouse = 'a'
vim.o.showmode = false
vim.o.clipboard = 'unnamedplus' -- to cut startup time, consider scheduling this

vim.o.termguicolors = true

vim.o.breakindent = true
vim.o.undofile = true

vim.o.signcolumn = 'yes' --vim.wo?
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 4

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true
vim.o.completeopt = 'menu,menuone,noselect,preview'

vim.o.winborder = 'rounded'

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_set_hl(0, "@type.typescript", { link = "Type" }) -- tag name
vim.api.nvim_set_hl(0, "@tag.astro", { link = "PreProc" }) -- tag like p
vim.api.nvim_set_hl(0, "@type.astro", { link = "Type" }) -- tag name
vim.api.nvim_set_hl(0, "@tag.delimiter.astro", { link = "PreProc" }) -- < / >
vim.api.nvim_set_hl(0, "@tag.attribute.astro", { link = "Identifier" }) -- something=""
vim.api.nvim_set_hl(0, "@punctuation.delimiter.astro", { link = "PreProc" }) -- something=""

vim.api.nvim_set_hl(0, "htmlTag", { link = "Label" })
vim.api.nvim_set_hl(0, "htmlTagN", { link = "Label" })
vim.api.nvim_set_hl(0, "htmlEndTag", { link = "Label" })


-- vim: ts=2 sts=2 sw=2 et
