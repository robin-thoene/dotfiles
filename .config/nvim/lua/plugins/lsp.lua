return {
  {
    'neovim/nvim-lspconfig',
    event = 'VeryLazy',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      local mason_lspconf = require 'mason-lspconfig'
      mason_lspconf.setup {
        automatic_installation = false,
      }
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      mason_lspconf.setup_handlers {
        function(server_name)
          require('lspconfig')[server_name].setup {
            capabilities = capabilities,
          }
        end,
      }
    end,
  },
}
