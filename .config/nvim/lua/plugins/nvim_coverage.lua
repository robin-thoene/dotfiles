return {
  {
    'andythigpen/nvim-coverage',
    dependencies = 'nvim-lua/plenary.nvim',
    opts = {
      auto_reload = true,
      commands = true,
      highlights = {
        covered = { fg = '#C3E88D' },
        uncovered = { fg = '#F07178' },
      },
      signs = {
        covered = { hl = 'CoverageCovered', text = '▎' },
        uncovered = { hl = 'CoverageUncovered', text = '▎' },
      },
      summary = {
        min_coverage = 80.0,
      },
      lang = {},
    },
  },
}
