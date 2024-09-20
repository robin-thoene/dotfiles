return {
  {
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        css = { 'prettier' },
        html = { 'djlint' },
        javascript = { 'prettier' },
        json = { 'jq' },
        lua = { 'stylua' },
        markdown = { 'prettier' },
        tex = { 'latexindent' },
        typescript = { 'prettier' },
        typescriptreact = { 'prettier' },
        yaml = { 'prettier' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = 'fallback',
      },
    },
  },
}
