return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  --opts = {},
  config = function()
    --local green = "#78e86d"
    require('tokyonight').setup({
      style = "night",
      -- change colors
      on_colors = function(colors)
        colors.green = "#78e86d"
        colors.green1 = "#3ce074"
        colors.green2 = "#02ba87"
        colors.cyan = "#0dd7e0"
        colors.teal = "#019393"
        colors.blue = "#46b9ff"
        colors.blue0 = "#2b8eff"
        colors.blue1 = "#03a9f7"
        colors.blue2 = "#06bff1"
        colors.blue5 = "#76c7ff"
        colors.blue6 = "#9cd6ff"
        colors.blue7 = "#004d73"
        colors.purple = "#a6a1ff"
        colors.magenta = "#a46bf5"
        colors.magenta2 = "#bd96ff"
        colors.red = "#e19fff"
        colors.red1 = "#e9b8ff"
        colors.yellow = "#c3affe"
        colors.orange = colors.green
        colors.black = "#111111"
        colors.dark3 = "#333333"
        colors.dark5 = "#555555"
        colors.bg = "#000000"
        colors.bg_dark = "#111111"
        colors.bg_dark1 = "#111111"
        colors.bg_float = "#222222"
        colors.bg_highlight = "#111111"
        colors.bg_popup = "#222222"
        colors.bg_search = "#00468c"
        colors.bg_sidebar = "#111111"
        colors.bg_statusline = "#222222"
        colors.bg_visual = "#1f003e"
        colors.fg = "#dddddd"
        colors.fg_dark = "#dddddd"
        colors.fg_float = "#dddddd"
        colors.fg_gutter = "#222222"
        colors.fg_sidebar = "#dddddd"
        colors.todo = "#03a9f7"
        colors.hint = colors.cyan
        colors.info = colors.blue
        colors.error = colors.red1
        colors.warning = colors.yellow
        colors.comment = "#555555"
        colors.border = "#333333"
        colors.border_highlight = "#027272"
        colors.git = {
          add = "#06976d",
          change = "#038db3",
          delete = "#8c2faf",
          ignore = "#444444"
        }
        colors.diff = {
          add = "#20303b",
          change = "#1f2231",
          delete = "#37222c",
          text = "#394b70"
        }
        colors.rainbow = {
          "#cc70f2",
          "#b17eff",
          "#968dff",
          "#53a0fe",
          "#46b9ff",
          "#02d5ef",
          "#07dfa2",
          "#6bef75"
        }
        colors.terminal = {
          black = "#333333",
          black_bright = "#444444",
          blue = "#03a9f7",
          blue_bright = "#76c7ff",
          cyan = "#05bdc1",
          cyan_bright = "#36ffe2",
          green = "#59de65",
          green_bright = "#80ff88",
          magenta = "#a46bf5",
          magenta_bright = "#b17eff",
          red = "#e9b8ff",
          red_bright = "#f0d1ff",
          white = "#cccccc",
          white_bright = "#eeeeee",
          yellow = "#a1fa68",
          yellow_bright = "#d1ffb8"
        }
        colors.terminal_black = "#444444"

      end,
      on_highlights = function(hl, colors)
        hl.Constant = { fg = colors.blue }
        hl.String = { fg = colors.blue6 }
        hl.Character = hl.String
        hl.Identifier = { fg = colors.fg }
        hl.Function = { fg = colors.green }
        hl.Operator = { fg = "#ffffff" }
        hl.Statement = { fg = colors.magenta }
        hl.Keyword = hl.Statement
        hl["@keyword.return"] = hl.Statement
        hl.Exception = { fg = colors.red }
        hl.PreProc = { fg = colors.blue7 }
        hl.Type = { fg = colors.teal }
        hl.Debug = { fg = colors.cyan }
        hl.MathParen = hl.Operator
        hl.IblScope = { fg = colors.dark5 }
        --hl["@variable.member"] = hl.Identifier
        hl["@property"] = hl.Identifier
        --unset property for lua to fix function highlights
        hl["@lsp.type.property.lua"] = {}
        hl["@variable.member"] = hl.Identifier
        hl["@variable.parameter"] = { fg = colors.purple }
        hl["@variable.parameter.builtin"] = { fg = colors.magenta2 }
        hl["@variable.builtin"] = { fg = colors.magenta2 }
        hl["@function.builtin"] = { fg = colors.cyan }
        hl["@operator"] = hl.Operator
        hl["@constructor"] = hl.Operator
        hl["@punctuation.delimiter"] = hl.Operator
        hl["@punctuation.special"] = hl.Operator
      end
    })

    -- uncomment to auto set this theme:
    vim.cmd.colorscheme "tokyonight"
  end
}
-- vim: ts=2 sts=2 sw=2 et
