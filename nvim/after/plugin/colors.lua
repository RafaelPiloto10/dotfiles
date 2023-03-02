function GenerateTheme(background, background_light, primary, secondary, dark)
	local theme = {}
	theme.background = background
	theme.background_light = background_light
	theme.primary = primary
	theme.secondary = secondary

	if dark then
		theme.noir_0 = '#ffffff' -- `noir_0` is light for dark themes, and dark for light themes
		theme.noir_1 = '#ffffff'
		theme.noir_2 = '#ffffff'
		theme.noir_3 = '#ffffff'
		theme.noir_4 = '#ffffff'
		theme.noir_5 = '#ffffff'
		theme.noir_6 = '#ffffff'
		theme.noir_7 = '#ffffff'
		theme.noir_8 = '#ffffff'
		theme.noir_9 = '#ffffff' -- `noir_9` is dark for dark themes, and light for light themes
		vim.g.background = "dark"
	else
		theme.noir_0 = '#000000'
		theme.noir_1 = '#000000'
		theme.noir_2 = '#000000'
		theme.noir_3 = '#000000'
		theme.noir_4 = '#000000'
		theme.noir_5 = '#000000'
		theme.noir_6 = '#000000'
		theme.noir_7 = '#000000'
		theme.noir_8 = '#000000'
		theme.noir_9 = '#000000'
		vim.g.background = "light"
	end

	return theme
end

local ayu_mirage = GenerateTheme('#212733', '#343f4c', '#ffffff', '#ffcc66', true)
local black = GenerateTheme('#0e1419', '#4a4a4a', '#ffffff', '#ffffff', true)
local white = GenerateTheme('#ffffff', '#cccccc', '#000000', '#000000', false)

function MonoColor(theme)
	local t = black
	if theme == "ayu_mirage" then
		t = ayu_mirage
	elseif theme == "black" then
		t = black
	elseif theme == "white" then
		t = white
	end

	require("noirbuddy").setup {
		colors = {
			primary = t.primary,
			secondary = t.secondary,
			background = t.background,

			noir_0 = t.noir_0,
			noir_1 = t.noir_1,
			noir_2 = t.noir_2,
			noir_3 = t.noir_3,
			noir_4 = t.noir_4,
			noir_5 = t.noir_5,
			noir_6 = t.noir_6,
			noir_7 = t.noir_7,
			noir_8 = t.noir_8,
			noir_9 = t.noir_9,

			diagnostic_error = '#FF3131',
			diagnostic_warning = '#FF5733',
			diagnostic_info = '#d5d5d5',
			diagnostic_hint = '#f5f5f5',

			diff_add = '#0FFF50',
			diff_change = '#FF5733',
			diff_delete = '#FF3131'
		}
	}

	-- Require colorbuddy...
	local Colors, colors, Group, groups, styles = require('colorbuddy').setup {}

	Colors.new('background_light', t.background_light)

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

	Group.new("MatchParen", colors.none, colors.background_light)

	Group.new('SearchInc', colors.none, colors.background_light)
	Group.new('Search', colors.none, colors.background_light)

	Group.new('CGonceal', colors.background_light, colors.none)
	Group.new('VertSplit', colors.background_light, colors.none)

	Group.new("StatusLine", colors.background, colors.none)
	Group.new("StatusLineNC", colors.background, colors.none)

	Group.new("Visual", colors.none, colors.background_light)
	Group.new('VisualNOS', colors.none, colors.background_light)

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

function ThemeColor(theme, mode)
	vim.cmd.colorscheme(theme)
	vim.cmd("set background=" .. mode)
end

function DefaultColor()
	local Colors, colors, Group, groups, styles = require('colorbuddy').setup {}

	Colors.new('primary', '#6E675F')
	Colors.new('background', '#FFFFFF')
	Colors.new('secondary', '#F095C7')

	Colors.new('diff_add', '#95C72A')
	Colors.new('diff_change', '#229986')
	Colors.new('diff_delete', '#EC0034')

	Colors.new('my_diagnostic_info', '#0511F2')
	Group.new('DiagnosticInfo', colors.my_diagnostic_info)

	Group.new('TelescopeTitle', colors.secondary)
	Group.new('TelescopeBorder', colors.primary)

	Group.new('LineNr', colors.primary)
	Group.new('SignColumn', colors.background)
	Group.new('ColorColumn', colors.background)

	Group.new("StatusLine", colors.background, colors.none)
	Group.new("StatusLineNC", colors.background, colors.none)

	Group.new("PMenu", colors.primary, colors.background)
	Group.new("PmenuSbar", colors.background, colors.secondary)
	Group.new("PMenuSel", colors.background, colors.secondary)
	Group.new("PmenuThumb", colors.background, colors.secondary)

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

-- MonoColor("white")
-- MonoColor("black")
-- MonoColor("ayu")

-- ThemeColor("modus-operandi", "light")
-- ThemeColor("modus-vivendi", "dark")
ThemeColor("lunaperche", "dark")

-- DefaultColor()
