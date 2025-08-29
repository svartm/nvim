local colors = {
  black        = '#09090b',
  white        = '#ebebeb',
  red          = '#ba86a6',
  green        = '#64a37d',
  blue         = '#538383',
  yellow       = '#7c74be', -- purple
  cyan         = '#63b0b0',
  gray         = '#332933',
  darkgray     = '#202027',
  lightgray    = '#808080',
  inactivegray = '#707070',
}
return {
  normal = {
    a = {bg = colors.darkgray, fg = colors.inactivegray, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.white},
    c = {bg = colors.darkgray, fg = colors.cyan}
  },
  insert = {
    a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.white},
    c = {bg = colors.blue, fg = colors.black}
  },
  visual = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.white},
    c = {bg = colors.darkgray, fg = colors.yellow}
  },
  replace = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.white},
    c = {bg = colors.darkgray, fg = colors.red}
  },
  command = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.white},
    c = {bg = colors.darkgray, fg = colors.green}
  },
  inactive = {
    a = {bg = colors.darkgray, fg = colors.inactivegray, gui = 'bold'},
    b = {bg = colors.gray, fg = colors.inactivegray},
    c = {bg = colors.darkgray, fg = colors.lightgray}
  }
}
-- require('lualine').setup {options = {theme = 'oexidark'}}
-- vim: ts=2 sts=2 sw=2 et
