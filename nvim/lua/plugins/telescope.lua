return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
-- or                              , branch = '0.1.x',tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
	      require('telescope').setup()
      end,
}
