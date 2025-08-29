return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- auto, latte, frappe, macchiato, mocha
      transparent_background = false, -- disables setting the background color.
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "light",
          percentage = 0.20, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" }, -- Change the style of comments
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {
        all = {
          base = "#000000"	, -- background pane
          mantle = "#0a0b11", -- secondary panes
          crust = "#000044", -- secondary panes, darkest
        }
      },
      custom_highlights = function(colors)
        return {
            Comment = { fg = colors.flamingo },
            TabLineSel = { bg = colors.pink },
            CmpBorder = { fg = colors.surface2 },
            Pmenu = { bg = colors.none },
        }
      end,
      default_integrations = true,
      integrations = {
        mason = true,
        telescope = {
          enabled = true,
          -- style = "nvchad"
        },
        which_key = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    })

    -- uncomment to auto set this theme:
    -- vim.cmd.colorscheme "catppuccin"
  end
}
-- vim: ts=2 sts=2 sw=2 et
