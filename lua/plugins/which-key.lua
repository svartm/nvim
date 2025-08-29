return {
  'folke/which-key.nvim',
  event = "VeryLazy",
  opts = {
    delay = 100,
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  -- Document existing key chains (from nvim-lua/kickstart.nvim)
  spec = {
    { '<leader>s', group = '[S]earch' },
    { '<leader>t', group = '[T]oggle' },
    { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
  },
}
-- vim: ts=2 sts=2 sw=2 et
