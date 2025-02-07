local setup = function()
  local dap = require 'dap'
  local ui = require 'dapui'
  local mason_registry = require 'mason-registry'

  require('dap').set_log_level 'TRACE'
  dap.listeners.before['run_to_terminal'] = function(session, body)
    print('[DAP Command]', vim.inspect(body))
  end
  require('dapui').setup()

  require('nvim-dap-virtual-text').setup {}
  vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
  vim.keymap.set('n', '<leader>gb', dap.run_to_cursor)

  vim.keymap.set('n', '<leader>?', function()
    require('dapui').eval(nil, { enter = true })
  end)
  vim.keymap.set('n', '<leader><F1>', dap.continue)
  vim.keymap.set('n', '<F2>', dap.step_into)
  vim.keymap.set('n', '<F3>', dap.step_over)
  vim.keymap.set('n', '<F4>', dap.step_out)
  vim.keymap.set('n', '<F5>', dap.step_back)
  vim.keymap.set('n', '<F13>', dap.restart)

  dap.listeners.before.attach.dapui_config = function()
    ui.open()
  end
  dap.listeners.before.launch.dapui_config = function()
    ui.open()
  end
  dap.listeners.before.event_terminated.dapui_config = function()
    ui.close()
  end
  dap.listeners.before.event_exited.dapui_config = function()
    ui.close()
  end

  -- Earlybird configuration with Mason path
  local location = vim.fn.system('opam var bin'):gsub('\n', '') -- Removes trailing newline
  dap.adapters.ocaml = {
    type = 'executable',
    command = 'ocamlearlybird',
    args = { 'debug' },
  }

  dap.configurations.ocaml = {
    {
      type = 'ocaml',
      request = 'launch',
      name = 'Debug OCaml Program',
      program = '${workspaceFolder}/src/ocaml/_build/default/bin/main.bc',
      cwd = '${workspaceFolder}',
      stopOnEntry = false,
      console = 'integratedTerminal',
      internalConsoleOptions = 'openOnSessionStart',
      debugServer = 4711,
      __buildDir = '${workspaceFolder}/_build/default',
      __sourceFiles = { '${workspaceFolder}/bin/main.ml' },
    },
  }
end

return setup()
