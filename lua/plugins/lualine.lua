local oexidark = require'lualine.themes.oexidark'

return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = false,
      theme = oexidark,
      component_separators = '|',
      section_separators = '',
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
