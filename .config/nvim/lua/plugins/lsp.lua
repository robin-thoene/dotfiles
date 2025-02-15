return {
  {
    'neovim/nvim-lspconfig',
    event = 'VeryLazy',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/cmp-nvim-lsp',
      { 'j-hui/fidget.nvim', opts = {} },
      'Hoffs/omnisharp-extended-lsp.nvim',
      'cordx56/rustowl',
    },
    config = function()
      local lspconfig = require 'lspconfig'
      local mason_lspconf = require 'mason-lspconfig'
      mason_lspconf.setup {
        automatic_installation = false,
      }
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      mason_lspconf.setup_handlers {
        function(server_name)
          -- Do not setup rust_analyzer, because the plugin `mrcjkb/rustaceanvim` plugin will take care of it
          if server_name == 'rust_analyzer' then
            return
          end
          lspconfig[server_name].setup {
            capabilities = capabilities,
          }
        end,
      }
      lspconfig.rustowlsp.setup {}
    end,
  },
}
