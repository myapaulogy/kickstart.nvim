return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			-- See Configuration section for options
		},
		keys = {
			{"<leader>zc", ":CopilotChat<CR>", mode="n", desc="Chat with Copliot"},
			{"<leader>ze", ":CopilotChatExplain<CR>", mode="v", desc="Have Copilot Explain"},
			{"<leader>zr", ":CopilotChatReview<CR>", mode="v", desc="Have Copilot Review"},
			{"<leader>zf", ":CopilotChatFix<CR>", mode="v", desc="Have Copilot Fix"},
			{"<leader>zo", ":CopilotChatOptimize<CR>", mode="v", desc="Have Copilot Optimize"},
			{"<leader>zd", ":CopilotChatDocs<CR>", mode="v", desc="Have Copilot add Docs"},
			{"<leader>zs", ":CopilotChatCommit<CR>", mode="n", desc="Commit Changes"},
			{"<leader>zs", ":CopilotChatCommit<CR>", mode="v", desc="Commit Changes"}
		},
	}
}
