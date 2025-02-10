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
      -- Configure what terminal to use when external terminal is requested
      dap.defaults.fallback.external_terminal = {
        command = '/usr/bin/alacritty',
        args = { '-e' },
      }
      -- LLDB
      dap.adapters.lldb = {
        type = 'executable',
        command = 'codelldb',
        name = 'lldb',
      }
      -- Setup the dotnet debugger
      dap.adapters.coreclr = {
        type = 'executable',
        command = 'netcoredbg',
        args = { '--interpreter=vscode' },
      }
      -- Go
      dap.adapters.delve = function(callback, config)
        if config.mode == 'remote' and config.request == 'attach' then
          callback {
            type = 'server',
            host = config.host or '127.0.0.1',
            port = config.port or '38697',
          }
        else
          callback {
            type = 'server',
            port = '${port}',
            executable = {
              command = 'dlv',
              args = { 'dap', '-l', '127.0.0.1:${port}', '--log', '--log-output=dap' },
              detached = vim.fn.has 'win32' == 0,
            },
          }
        end
      end
      dap.configurations.go = {
        {
          type = 'delve',
          name = 'Debug',
          request = 'launch',
          program = '${file}',
        },
        {
          type = 'delve',
          name = 'Debug test', -- configuration for debugging test files
          request = 'launch',
          mode = 'test',
          program = '${file}',
        },
        -- works with go.mod packages and sub packages
        {
          type = 'delve',
          name = 'Debug test (go.mod)',
          request = 'launch',
          mode = 'test',
          program = './${relativeFileDirname}',
        },
      }
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
