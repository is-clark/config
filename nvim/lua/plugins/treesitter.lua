return {
-- more settings can be found here: https://github.com/nvim-treesitter/nvim-treesitter
-- look to add the local treesitter cli or something like that
	"nvim-treesitter/nvim-treesitter",
	build = ':TSUpdate',

	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = {
				"lua",
				"vim",
				'python',
				"markdown",
				"c",
				"rust",
				'java',
			},
		})
	end,
}
