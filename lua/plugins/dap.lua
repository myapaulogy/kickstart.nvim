return {
	'mfussenegger/nvim-dap',
	dependencies = {
		'mfussenegger/nvim-dap-python',
		'rcarriga/nvim-dap-ui',
		'nvim-neotest/nvim-nio',
		'theHamsta/nvim-dap-virtual-text'
	},
	config = function()
		local path = '~/.local/share/nvim/mason/packages/debugpy/venv/bin/python'
		local dap = require 'dap'

		vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
		vim.keymap.set("n", "<leader>r", dap.run)

		vim.keymap.set("n", "<leader>c", dap.step_into)
		vim.keymap.set("n", "<leader>br", dap.continue)

		local dap_python = require('dap-python')
		dap_python.setup(path)
		
		local dapui = require 'dapui'

		dapui.setup()
		dap.listeners.after.event_initialized['dapui-config'] = function()
			dapui.open()
		end
		dap.listeners.before.event_initialized['dapui-config'] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited['dapui-config'] = function()
			dapui.close()
		end
	end
}
