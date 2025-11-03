-- Define what packages needs to be installed by the mason tool installer automatically
local ensure_installed = {}
local formatters = {
  'jq',
  'latexindent',
  'prettier',
  'stylua',
  'taplo',
  'shfmt',
}
local lsps = {
  'eslint',
  'gopls',
  'lua_ls',
  'marksman',
  'omnisharp',
  'rust_analyzer',
  'tailwindcss',
  'templ',
  'terraformls',
  'texlab',
  'ts_ls',
  'yaml-language-server',
}
local debuggers = {
  'codelldb',
  'netcoredbg',
  'delve',
}

vim.list_extend(ensure_installed, formatters)
vim.list_extend(ensure_installed, lsps)
vim.list_extend(ensure_installed, debuggers)

return {
  {
    'mason-org/mason.nvim',
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
