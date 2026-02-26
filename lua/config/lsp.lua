vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      }
    }
  },
  root_markers = { '.git' },
})

vim.lsp.enable({'clangd', 'denols', 'docker_compose_language_service', 'emmet_ls', 'lua_ls', 'rust-analyzer', 'svelte', 'ts_ls', 'vimls', 'yamlls'})

-- vim: ts=2 sts=2 sw=2 et
