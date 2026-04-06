-- ┌─────────────┐
-- │ Colorscheme │
-- └─────────────┘
--
-- Added this file to split set-up for colors and theme.
--
-- Use this file to install and configure colorscheme and related plugins.

-- Make concise helpers for installing/adding plugins in two stages
local add = vim.pack.add
local now = Config.now
-- local now, now_if_args, later = Config.now, Config.now_if_args, Config.later

-- Install Colorschemes ========================================================
-- Example:
--
-- now(function()
-- -- 1. install needed plugins
  -- add({
    -- 'https://github.com/sainnhe/everforest',
    -- 'https://github.com/Shatur/neovim-ayu',
    -- 'https://github.com/ellisonleao/gruvbox.nvim',
    -- 'https://github.com/vague-theme/vague.nvim',
  -- })
-- -- 2.optional configuration
  -- require("myscheme").setup({
  -- })
  -- -- 3. enable color scheme
  -- vim.cmd('color myscheme')
-- end)

-- now(function()
--   add({
--     'https://github.com/vague-theme/vague.nvim',
--   })
--   vim.cmd("colorscheme vague")
-- end)


-- MiniMax default =============================================================
-- Note: Commented in '30_mini.lua'.

-- Enable 'miniwinter' color scheme. It comes with 'mini.nvim' and uses 'mini.hues'.
--
-- See also:
-- - `:h mini.nvim-color-schemes` - list of other color schemes
-- - `:h MiniHues-examples` - how to define highlighting with 'mini.hues'
-- - 'plugin/40_plugins.lua' honorable mentions - other good color schemes
-- now(function() vim.cmd('colorscheme miniwinter') end)

-- You can try these other 'mini.hues'-based color schemes (uncomment with `gcc`):
-- now(function() vim.cmd('colorscheme minispring') end)
-- now(function() vim.cmd('colorscheme minisummer') end)
-- now(function() vim.cmd('colorscheme miniautumn') end)
-- now(function() vim.cmd('colorscheme randomhue') end)

-- MiniMax recommended =========================================================
-- Note: Commented in '40_plugins.lua'.

-- Beautiful, usable, well maintained color schemes outside of 'mini.nvim' and
-- have full support of its highlight groups. Use if you don't like 'miniwinter'
-- enabled in 'plugin/30_mini.lua' or other suggested 'mini.hues' based ones.
Config.now(function()
 -- Install only those that you need
 add({
   'https://github.com/sainnhe/everforest',
--    'https://github.com/Shatur/neovim-ayu',
--    'https://github.com/ellisonleao/gruvbox.nvim',
 })
--
  -- Enable only one
  vim.cmd('color everforest')
end)

