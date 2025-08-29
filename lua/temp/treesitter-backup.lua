-- configuration based on nvim-lua/kickstart.nvim

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
        'bash',
        'c',
        'diff',
        'html',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'python',
        'query',
        'rust',
        'vim',
        'vimdoc'
      },
    auto_install = true,
    highlight = { enable = true },
    -- indent = { enable = true },
  }
}
-- vim: ts=2 sts=2 sw=2 et
