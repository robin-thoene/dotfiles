return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'Issafalcon/neotest-dotnet',
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'rustaceanvim.neotest',
          require 'neotest-dotnet' {
            dap = {
              adapter_name = 'coreclr',
            },
            discovery_root = 'solution',
          },
        },
      }
    end,
  },
}
