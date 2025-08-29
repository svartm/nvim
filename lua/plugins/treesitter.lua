-- configuration based on nvim-lua/kickstart.nvim

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup{
      require'nvim-treesitter'.install { 'rust', 'markdown', 'markdown_inline', 'html', 'astro', 'javascript', 'typescript', 'css', 'svelte', 'scss'}
    }
  end
}
-- vim: ts=2 sts=2 sw=2 et
