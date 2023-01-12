require("noirbuddy").setup {
	colors = {
		primary = "#ffffff",
		secondary = '#ffcc66',
		background = '#212733',

		diagnostic_error = '#FF3131',
		diagnostic_warning = '#FF5733',
		diagnostic_info = '#d5d5d5',
		diagnostic_hint = '#f5f5f5',

		diff_add = '#0FFF50',
		diff_change = '#FF5733',
		diff_delete = '#FF3131'
	},
}


function Color()
	-- Require colorbuddy...
	local Colors, colors, Group, groups, styles = require('colorbuddy').setup {}

	Colors.new('background_light', '#3c475d')
	-- vim.cmd[[
	--     if filereadable(expand('~/.vimrc_background'))
	--         let base16colorspace=256
	--         source ~/.vimrc_background
	--     endif
	-- ]]

	Group.new('TelescopeTitle', colors.secondary)
	Group.new('TelescopeBorder', colors.primary)
	Group.new('CursorLineNr', colors.primary, colors.noir_9)
	Group.new('LineNr', colors.primary)
	Group.new('SignColumn', colors.background)
	Group.new('ColorColumn', colors.background)
	Group.new('Searchlight', nil, colors.secondary)

	Group.new("StatusLine", colors.background, colors.none)
	Group.new("StatusLineNC", colors.background, colors.none)

	Group.new("Visual", colors.none, colors.background_light)

	Group.new("PMenu", colors.primary, colors.background)
	Group.new("PmenuSbar", colors.background, colors.secondary)
	Group.new("PMenuSel", colors.background, colors.secondary)
	Group.new("PmenuThumb", colors.background, colors.secondary)

	Group.new('CursorColumn', colors.primary, colors.primary, styles.none)
	Group.new('iCursor', colors.primary, colors.primary, styles.none)
	Group.new('CursorLine', colors.primary, colors.primary, styles.none)
	Group.new('CursorColumn', colors.primary, colors.primary, styles.none)
	Group.new('TermCursorNC', colors.primary, colors.primary, styles.none)

	Group.new('@comment', colors.noir_3)
	Group.new('@punctuation', colors.noir_1)
	Group.new('@string', colors.secondary)
	Group.new('@number', colors.secondary)

	-- Add font styles to highlight groups...
	Group.new('@constant', colors.noir_2, nil, styles.bold)
	Group.new('@method', colors.primary, nil, styles.bold + styles.italic)

	Group.new("GitGutterAdd", colors.diff_add, colors.none)
	Group.new("GitGutterDelete", colors.diff_delete, colors.none)
	Group.new("GitGutterChange", colors.diff_change, colors.none)
	Group.new("GitGutterChangeDelete", colors.diff_change, colors.none)



	local hl = function(thing, opts)
		vim.api.nvim_set_hl(0, thing, opts)
	end

	hl("StatusLine", {
		bg = "none"
	})

end

Color()
