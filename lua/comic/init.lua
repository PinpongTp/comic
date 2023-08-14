-- Vim Color Scheme
-- Name:       comic
-- Maintainer: http//github.com/PinpongTp
-- License:    The MIT License (MIT)

local colors = require("comic.colors")
local utils = require("comic.utils")

-- Set dark or light color scheme, depending on VIM background setting
c = colors.Dark
c.base1 = c.purple
c.base2 = c.green
if vim.opt.background:get() == "light" then
	c = colors.Light
end

-- Enables pseudo-transparency for the popup-menu
if vim.opt.pumblend == 1 then
	vim.opt.pumblend = 20
end

-- General UI
local general_ui = {
	Normal = { fg = c.fg, bg = c.bg },

	-- Dropdowns
	Pmenu = { fg = c.fg, bg = c.bg2 },
	--PmenuSel = { fg = c.base8, bg = c.water }, -- update
	PmenuSel = { bg = c.bg3 },
	--PmenuSbar = { fg = c.base2, bg = c.base7 },
	--PmenuThumb = { bg = c.base4 },

	--Visual = { bg = utils.Mix(c.sap, c.base8, 0.6) },
	--VisualBold = { bg = c.sap, gui = "bold" },

	LineNr = { fg = c.bg3, bg = c.bg },
	Cursor = { bg = c.yellow },
	CursorLine = { bg = c.bg2 },
	CursorLineNr = { fg = c.green2 },
	CursorColumn = { bg = c.bg },

	--Folded = { fg = c.base5, bg = c.base4 },
	FoldColumn = { fg = c.fg5, bg = c.bg },
	SignColumn = { fg = c.fg5, bg = c.bg },
	ColorColumn = { bg = c.bg },

	--IndentGuide = { fg = c.base6 },
	--IndentGuideEven = { fg = c.base6 },
	--IndentGuideOdd = { fg = c.base6 },

	StatusLine = { fg = c.fg2, bg = c.bg3 },
	--StatusLineNC = { fg = c.base5, bg = c.base7 },

	--TermCursor = { fg = c.base1, gui = "reverse" },
	--TermCursorNC = { fg = c.base1_alt, gui = "reverse" },
	--TermNormal = { fg = c.base1, bg = c.base8 },
	--TermNormalNC = { fg = c.base1, bg = c.base8 },

	WildMenu = { fg = c.green2, bg = c.bg },
	--Separator = { fg = c.base1_alt },
	VertSplit = { fg = c.bg2, bg = c.bg },

	--TabLineFill = { bg = c.base6 },
	--TabLine = { fg = c.base3, bg = c.base6 },
	--TabLineSel = { fg = c.base2, bg = c.base8 },
}
utils.apply_highlight(general_ui)
utils.high_link("Normal", "EndOfBuffer")

-- Main Syntax
local main_syntax = {
	Tag = { fg = c.purple, gui = "bold" },
	--Link = { fg = c.base1, sp = 'undercurl' },
	--URL = { fg = c.base1, sp = 'undercurl' },
	--Underlined = { fg = c.base1, sp = 'underline' },

	Comment = { fg = c.fg5, gui = "italic" },
	CommentBold = { fg = c.fg5, gui = "bold" },
	SpecialComment = { fg = c.fg4, gui = "bold" },

	--Macro = { fg = c.aubergine },
	Define = { fg = c.purple },
	--Include = { fg = c.aubergine },
	PreProc = { fg = c.purple, gui = "bold" },
	--PreCondit = { fg = c.purple, gui = "bold" },

	Label = { fg = c.green3 },
	--Repeat = { fg = c.aubergine },
	Keyword = { fg = c.purple },
	Operator = { fg = c.purple },
	--Delimiter = { fg = c.base3 },
	Statement = { fg = c.purple },
	--Exception = { fg = c.aubergine },
	Conditional = { fg = c.purple },

	--Variable = { fg = c.base2 },
	--VariableBuiltin = { fg = c.sky, gui = "bold" },
	--Constant = { fg = c.turquoise, gui = "bold" },

	Number = { fg = c.orange },
	Float = { fg = c.orange },
	--Boolean = { fg = c.orange },
	--Enum = { fg = c.orange },

	Character = { fg = c.orange, gui = "bold" },
	--SpecialChar = { fg = c.orange, gui = "bold" },

	String = { fg = c.green2 },
	--StringDelimiter = { fg = c.green2 },

	Special = { fg = c.fg },
	--SpecialBold = { fg = c.aubergine, gui = "bold" },

	--Field = { fg = c.aubergine },
	--Argument = { fg = c.base3 },
	--Attribute = { fg = c.base3 },
	Identifier = { fg = c.fg, gui = "italic" },
	--Property = { fg = c.purple },
	Function = { fg = c.green },
	--FunctionBuiltin = { fg = c.sky, gui = "bold" },
	--KeywordFunction = { fg = c.sky, gui = "italic" },
	--Method = { fg = c.aubergine },

	Type = { fg = c.yellow },
	--TypeBuiltin = { fg = c.leaf, gui = "bold" },
	StorageClass = { fg = c.yellow, gui = "italic" },
	--Class = { fg = c.base4 },
	--Structure = { fg = c.purple },
	--Typedef = { fg = c.base2 },

	--Regexp = { fg = c.gold },
	--RegexpSpecial = { fg = c.gold },
	--RegexpDelimiter = { fg = c.base3, gui = "bold" },
	--RegexpKey = { fg = c.gold, gui = "bold" },
}

utils.apply_highlight(main_syntax)
utils.high_link("CommentURL", "URL")
utils.high_link("CommentLabel", "CommentBold")
utils.high_link("CommentSection", "CommentBold")
utils.high_link("Noise", "Comment")

-- Search, Highlight. Conceal, Messages
local search_high_ui = {
	--Search = { bg = utils.Mix(c.turquoise, c.base8, 0.7), gui = "bold" },
	Search = { gui = "underline" },
	--Substitute = { fg = c.aubergine, gui = "strikethrough,bold" },
	--IncSearch = { bg = utils.Mix(c.turquoise, c.base8, 0.5), gui = "bold" },
	IncSearch = { fg = c.bg, bg = c.base1 },
	--IncSearchCursor = { gui = "reverse" },

	--Conceal = { fg = c.base6, gui = "none" },
	--SpecialKey = { fg = c.fg2, gui = "bold" },
	SpecialKey = { fg = c.fg2, bg = c.bg2 },
	NonText = { fg = c.bg4, bg = c.bg },
	--MatchParen = { fg = c.base1, bg = c.base5, gui = "bold" },
	MatchParen = { fg = c.red, gui = "underline" },
	--Whitespace = { fg = c.base5 },

	--Highlight = { bg = c.sap },
	--HighlightSubtle = { bg = c.base6 },

	--Question = { fg = c.turquoise, gui = "bold" },

	--File = { fg = c.base4 },
	Directory = { fg = c.orange },
	Title = { fg = c.fg, gui = "bold" },

	Bold = { gui = "bold" },
	--Emphasis = { fg = c.turquoise, gui = "bold" },
}
utils.apply_highlight(search_high_ui)

-- Text levels
local text_colors = {
	Normal = c.fg,
	Info = c.pink,
	Success = c.green,
	Warning = c.copper,
	Debug = c.orange,
	Error = c.red,
	Special = c.purple,
	Muted = c.fg5,
}

for key, _ in pairs(text_colors) do
	utils.apply_highlight({
		["Text" .. key] = {
			fg = text_colors[key],
		},
	})
	utils.apply_highlight({
		["Text" .. key .. "Bold"] = {
			fg = text_colors[key],
			gui = "bold",
		},
	})
end

utils.high_link("Msg", "TextSuccess")
utils.high_link("MoreMsg", "TextInfo")
utils.high_link("WarningMsg", "TextWarning")
utils.high_link("Error", "TextError")
utils.high_link("ErrorMsg", "TextError")
utils.high_link("ModeMsg", "TextSpecial")
utils.high_link("Todo", "TextWarningBold")

-- Diff
local diff = {
	diffLine = { fg = c.fg, bg = c.purple2 },
	diffSubName = { fg = c.fg, bg = c.purple2 },

	DiffAdd = { bg = utils.Mix(c.green, c.bg2, 0.9) },
	DiffChange = { bg = utils.Mix(c.orange, c.bg2, 0.9) },
	DiffText = { fg = c.copper },
	DiffDelete = { bg = utils.Mix(c.red, c.bg2, 0.9) },

	DiffAdded = {
		fg = utils.Mix(c.green, c.bg2, 0.9),
		bg = utils.Mix(c.green, c.bg2, 0.9),
	},
	DiffModified = {
		fg = c.base1,
		bg = utils.Mix(c.copper, c.bg2, 0.8),
	},
	DiffRemoved = {
		fg = utils.Mix(c.red, c.bg2, 0.9),
		bg = utils.Mix(c.red, c.bg2, 0.9),
	},

	DiffAddedGutter = { fg = c.green, gui = "bold" },
	DiffModifiedGutter = { fg = c.copper, gui = "bold" },
	DiffRemovedGutter = { fg = c.red, gui = "bold" },

	DiffAddedGutterLineNr = { fg = c.green },
	DiffModifiedGutterLineNr = { fg = c.copper },
	DiffRemovedGutterLineNr = { fg = c.red },
}
utils.high_clear("DiffAdd")
utils.high_clear("DiffChange")
utils.high_clear("DiffText")
utils.high_clear("DiffDelete")
utils.apply_highlight(diff)
