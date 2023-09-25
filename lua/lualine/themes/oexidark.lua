local colors = {
  black        = '#000000',
  white        = '#bbbbbb',
  red          = '#ba86a6',
  green        = '#588c7b',
  blue         = '#538383',
  yellow       = '#7c74be', -- purple
  gray         = '#3a3a3a',
  darkgray     = '#262626',
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
