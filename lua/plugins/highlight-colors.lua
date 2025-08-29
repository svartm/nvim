return {
  'brenoprata10/nvim-highlight-colors', 
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-highlight-colors").setup {
      ---@usage 'background'|'foreground'|'virtual'
      render = 'foreground',
      virtual_symbol = '■',
    }
  end
}
