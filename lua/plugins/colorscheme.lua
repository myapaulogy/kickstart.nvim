return {
	"bluz71/vim-nightfly-colors",
	lazy = false,
	init = function()
		vim.cmd.colorscheme 'retrobox'
	end,
	priority = 1000
}

--return { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = true, priority = 1000 }
--return { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 }
--[[
return {
		'bluz71/vim-moonfly-colors',
		priority = 1000,
		init = function()
				vim.cmd.colorscheme 'moonfly'
		end
}
]] --
