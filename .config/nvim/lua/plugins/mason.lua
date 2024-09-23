-- Define what packages needs to be installed by the mason tool installer automatically
local ensure_installed = {

  rust_analyzer = {},
  'eslint',
  'lua_ls',
  'omnisharp',
  'tailwindcss',
  'terraformls',
  'texlab',
  'ts_ls',
}
local formatters = {
  'djlint',
  'jq',
  'latexindent',
  'prettier',
  'stylua',
}
local lsps = {}
vim.list_extend(ensure_installed, formatters)
vim.list_extend(ensure_installed, lsps)

return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {
      ensure_installed = ensure_installed,
    },
  },
}
