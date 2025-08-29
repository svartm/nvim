return {
  { 
    "neovim/nvim-lspconfig" 
  },

  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mason-org/mason.nvim"
    },
    opts = {
      ensure_installed = {
        "basedpyright",
        "ruff"
      }
    }
  }
}
-- vim: ts=2 sts=2 sw=2 et
