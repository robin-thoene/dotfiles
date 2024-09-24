return {
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio',
      {
        'stevearc/overseer.nvim',
        opts = {},
      },
    },
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'
      -- Setup the dotnet debugger
      dap.adapters.coreclr = {
        type = 'executable',
        command = 'netcoredbg',
        args = { '--interpreter=vscode' },
      }
      -- Setup the lldb/codelldb debugger
      dap.adapters.lldb = dap.adapters.codelldb
      -- Customize the dap ui
      dapui.setup {
        icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
        controls = {
          icons = {
            pause = '⏸',
            play = '▶',
            step_into = '⏎',
            step_over = '⏭',
            step_out = '⏮',
            step_back = 'b',
            run_last = '▶▶',
            terminate = '⏹',
            disconnect = '⏏',
          },
        },
      }
      -- Register listeners
      dap.listeners.after.event_initialized['dapui_config'] = dapui.open
      dap.listeners.before.event_terminated['dapui_config'] = dapui.close
      dap.listeners.before.event_exited['dapui_config'] = dapui.close
      -- Process launch.json and tasks.json files
      require('overseer').setup()
      require('dap.ext.vscode').json_decode = require('overseer.json').decode
      require('dap.ext.vscode').load_launchjs(nil, { codelldb = { 'rust' }, lldb = { 'rust' }, coreclr = { 'cs' } })
    end,
  },
}
