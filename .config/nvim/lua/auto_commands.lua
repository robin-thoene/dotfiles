-- Highlight just copied text inside the editor for a short time
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
})
-- When an LSP attaches on a buffer, enable LSP related keymaps and functionality
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('LSP', {
    clear = true,
  }),
  callback = function(event)
    -- Define the keymaps
    local telescope_builtin = require 'telescope.builtin'
    vim.keymap.set('n', 'gd', telescope_builtin.lsp_definitions, { buffer = event.buf, desc = 'Go to definition' })
    vim.keymap.set('n', 'gr', telescope_builtin.lsp_references, { buffer = event.buf, desc = 'Go to references' })
    vim.keymap.set('n', 'gI', telescope_builtin.lsp_implementations, { buffer = event.buf, desc = 'Go to implementations' })
    vim.keymap.set('n', '<leader>D', telescope_builtin.lsp_type_definitions, { buffer = event.buf, desc = 'Type definition' })
    vim.keymap.set('n', '<leader>ds', telescope_builtin.lsp_document_symbols, { buffer = event.buf, desc = 'Document symbols' })
    vim.keymap.set('n', '<leader>ws', telescope_builtin.lsp_dynamic_workspace_symbols, { buffer = event.buf, desc = 'Workspace symbols' })
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = event.buf, desc = 'Rename' })
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = event.buf, desc = 'Code action' })
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = event.buf, desc = 'Hover documentation' })
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = event.buf, desc = 'Go to declaration' })
    -- If the buffer is  csharp, override the key mapping to enrich the functionality
    if vim.bo[event.buf].filetype == 'cs' then
      vim.keymap.set('n', 'gd', require('omnisharp_extended').lsp_definitions, { buffer = event.buf, desc = 'Go to definition' })
    end
    -- Automatically highlight references on rest (and clear it automatically)
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if client and client.server_capabilities.documentHighlightProvider then
      vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
        buffer = event.buf,
        callback = vim.lsp.buf.document_highlight,
      })

      vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
        buffer = event.buf,
        callback = vim.lsp.buf.clear_references,
      })
    end
  end,
})
