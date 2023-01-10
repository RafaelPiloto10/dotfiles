require("noirbuddy").setup {
	colors = {
		primary = '#ffcc66',
		secondary = "#ffffff",
		background = '#212733',

		diagnostic_error = '#EC0034',
		diagnostic_warning = '#ff7700',
		diagnostic_info = '#d5d5d5',
		diagnostic_hint = '#f5f5f5',

		diff_add = '#f5f5f5',
		diff_change = '#737373',
		diff_delete = '#EC0034'
	},
}


function Color()
	-- Require colorbuddy...
	local Colors, colors, Group, groups, styles = require('colorbuddy').setup {}


	-- vim.cmd[[
	--     if filereadable(expand('~/.vimrc_background'))
	--         let base16colorspace=256
	--         source ~/.vimrc_background
	--     endif
	-- ]]

	Group.new('TelescopeTitle', colors.primary)
	Group.new('TelescopeBorder', colors.secondary)
	Group.new('CursorLineNr', colors.primary, colors.noir_9)
	Group.new('LineNr', colors.primary)
	Group.new('SignColumn', colors.background)
	Group.new('ColorColumn', colors.background)
	Group.new('Searchlight', nil, colors.secondary)

	Group.new('CursorColumn', colors.primary, colors.primary, styles.none)
	Group.new('iCursor', colors.primary, colors.primary, styles.none)
	Group.new('CursorLine', colors.primary, colors.primary, styles.none)
	Group.new('CursorColumn', colors.primary, colors.primary, styles.none)
	Group.new('TermCursorNC', colors.primary, colors.primary, styles.none)

	Group.new('@comment', colors.noir_3)
	Group.new('@punctuation', colors.noir_1)

	-- Add font styles to highlight groups...
	Group.new('@constant', colors.noir_2, nil, styles.bold)
	Group.new('@method', colors.primary, nil, styles.bold + styles.italic)

	-- Link highlight groups...
	Group.link('SignifySignAdd', groups.DiffAdd)
	Group.link('SignifySignChange', groups.DiffChange)
	Group.link('SignifySignDelete', groups.DiffDelete)


	local hl = function(thing, opts)
		vim.api.nvim_set_hl(0, thing, opts)
	end

	hl("StatusLine", {
		bg = "none"
	})

end

Color()
