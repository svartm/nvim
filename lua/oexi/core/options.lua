local opt = vim.opt -- alias for conciseness

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.hlsearch = false
opt.number = true --vi.wo?
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'

opt.termguicolors = true 

opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = 'yes' --vim.wo?
opt.updatetime = 250
opt.timeoutlen = 300
opt.completeopt = 'menuone,noselect'
