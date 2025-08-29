-- treesitter highlights
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'markdown', 'html', 'astro' },
  callback = function() vim.treesitter.start() end,
})

-- diagnostic virtual lines
vim.diagnostic.config({
  virtual_lines = {
    current_line = true,
  },
})

-- auto-completion
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
  --auto-completion
  callback = function(event)
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, event.buf, { autotrigger = true })
    end
  --end,
--})


-- From nvim-lua/kickstart.nvim:

-- The following two autocommands are used to highlight references of the
-- word under your cursor when your cursor rests there for a little while.
--    See `:help CursorHold` for information about when this is executed
--
-- When you move your cursor, the highlights will be cleared (the second autocommand).
-- TODO move into a lsp attach thing
    --local client = vim.lsp.get_client_by_id(event.data.client_id)
    if client:supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
      local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
      vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
        buffer = event.buf,
        group = highlight_augroup,
        callback = vim.lsp.buf.document_highlight,
      })
      vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
        buffer = event.buf,
        group = highlight_augroup,
        callback = vim.lsp.buf.clear_references,
      })
      vim.api.nvim_create_autocmd('LspDetach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
        callback = function(event2)
          vim.lsp.buf.clear_references()
          vim.api.nvim_clear_autocmds { group = 'kickstart-lsp-highlight', buffer = event2.buf }
        end,
      })
    end
-- The following code creates a keymap to toggle inlay hints in your
-- code, if the language server you are using supports them
--
-- This may be unwanted, since they displace some of your code
    if client:supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
      vim.keymap.set('n', '<leader>th', function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
      end,  { buffer = event.buf, desc = 'LSP: [T]oggle Inlay [H]ints' })
    end
  end,
})


      -- Diagnostic Config
      -- See :help vim.diagnostic.Opts
      --vim.diagnostic.config {
        --severity_sort = true,
        --float = { border = 'rounded', source = 'if_many' },
        --underline = { severity = vim.diagnostic.severity.ERROR },
        --signs = vim.g.have_nerd_font and {
          --text = {
            --[vim.diagnostic.severity.ERROR] = '󰅚 ',
            --[vim.diagnostic.severity.WARN] = '󰀪 ',
            --[vim.diagnostic.severity.INFO] = '󰋽 ',
            --[vim.diagnostic.severity.HINT] = '󰌶 ',
          --},
        --} or {},
        --virtual_text = {
          --source = 'if_many',
          --spacing = 2,
          --format = function(diagnostic)
            --local diagnostic_message = {
              --[vim.diagnostic.severity.ERROR] = diagnostic.message,
              --[vim.diagnostic.severity.WARN] = diagnostic.message,
              --[vim.diagnostic.severity.INFO] = diagnostic.message,
              --[vim.diagnostic.severity.HINT] = diagnostic.message,
            --}
            --return diagnostic_message[diagnostic.severity]
          --end,
        --},
      --}
