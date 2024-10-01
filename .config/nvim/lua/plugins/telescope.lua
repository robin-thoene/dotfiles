return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
    'nvim-telescope/telescope-ui-select.nvim',
  },
  config = function()
    -- the loading is important
    require('telescope').setup {
      pickers = {
        find_files = {
          find_command = { 'rg', '--files', '--hidden' },
        },
      },
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown {},
        },
      },
    }
    require('telescope').load_extension 'fzf'
    require('telescope').load_extension 'ui-select'
  end,
}
