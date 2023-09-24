-- DELETE THIS
local colors = {
  black        = '#050505',
  white        = '#bbbbbb',
  red          = '#dd8da6',
  green        = '#64b27d',
  blue         = '#5a82a6',
  yellow       = '#ab90c2', -- light purple
  gray         = '#555555',
  darkgray     = '#333333',
  lightgray    = '#808080',
  inactivegray = '#707070',
}
return {
  normal = {
    a = {bg = colors.gray, fg = colors.inactivegray, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.white},
    c = {bg = colors.darkgray, fg = colors.gray}
  },
  insert = {
    a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.white},
    c = {bg = colors.darkgray, fg = colors.gray}
  },
  visual = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.white},
    c = {bg = colors.darkgray, fg = colors.gray}
  },
  replace = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.white},
    c = {bg = colors.darkgray, fg = colors.gray}
  },
  command = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.white},
    c = {bg = colors.darkgray, fg = colors.gray}
  },
  inactive = {
    a = {bg = colors.darkgray, fg = colors.inactivegray, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.inactivegray},
    c = {bg = colors.darkgray, fg = colors.gray}
  }
}
-- require('lualine').setup {options = {theme = 'oexidark'}}
