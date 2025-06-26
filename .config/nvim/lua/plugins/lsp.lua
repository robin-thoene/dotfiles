return {
  {
    'neovim/nvim-lspconfig',
    event = 'VeryLazy',
    dependencies = {
      'mason-org/mason.nvim',
      'mason-org/mason-lspconfig.nvim',
      'hrsh7th/cmp-nvim-lsp',
      { 'j-hui/fidget.nvim', opts = {} },
      'Hoffs/omnisharp-extended-lsp.nvim',
    },
    config = function()
      local lspconfig = require 'lspconfig'
      local mason_lspconf = require 'mason-lspconfig'
      mason_lspconf.setup {
        ensure_installed = {},
        automatic_enable = {
          exclude = {
            'rust_analyzer',
          },
        },
      }
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      vim.lsp.config('*', {
        capabilities = capabilities,
      })
    end,
  },
}
