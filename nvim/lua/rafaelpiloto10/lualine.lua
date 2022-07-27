require('lualine').setup({
	options = {
		theme = 'base16',
  		section_separators = { left = '', right = '' },
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {},
		lualine_x = {'encoding', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
  	},
	tabline = {
	  lualine_a = {'buffers'},
	  lualine_b = {},
	  lualine_c = {},
	  lualine_x = {},
	  lualine_y = {},
	  lualine_z = {}
	}
})
