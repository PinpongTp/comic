-- Vim Color Scheme
-- Name:       comic
-- Maintainer: http//github.com/PinpongTp
-- License:    The MIT License (MIT)

local colors = require("comic.colors")
local utils = require("comic.utils")

-- Set dark or light color scheme, depending on VIM background setting
C = colors.Dark
C.base1 = C.purple
C.base2 = C.green
C.str = C.str
if vim.opt.background:get() == "light" then
	C = colors.Light
end

-- Enables pseudo-transparency for the popup-menu
if vim.opt.pumblend == 1 then
	vim.opt.pumblend = 20
end

-- General UI
local general_ui = {
	Normal = { fg = C.fg, bg = C.bg },

	-- Dropdowns
	Pmenu = { fg = C.fg, bg = C.bg2 },
	--PmenuSel = { fg = c.base8, bg = c.water }, -- update
	PmenuSel = { bg = C.bg3 },
	--PmenuSbar = { fg = c.base2, bg = c.base7 },
	--PmenuThumb = { bg = c.base4 },

	--Visual = { bg = utils.Mix(c.sap, c.base8, 0.6) },
	--VisualBold = { bg = c.sap, gui = "bold" },

	LineNr = { fg = C.bg3, bg = C.bg },
	Cursor = { bg = C.yellow },
	CursorLine = { bg = C.bg2 },
	CursorLineNr = { fg = C.green2 },
	CursorColumn = { bg = C.bg },

	--Folded = { fg = c.base5, bg = c.base4 },
	FoldColumn = { fg = C.fg5, bg = C.bg },
	SignColumn = { fg = C.fg5, bg = C.bg },
	ColorColumn = { bg = C.bg },

	--IndentGuide = { fg = c.base6 },
	--IndentGuideEven = { fg = c.base6 },
	--IndentGuideOdd = { fg = c.base6 },

	StatusLine = { fg = C.fg2, bg = C.bg3 },
	--StatusLineNC = { fg = c.base5, bg = c.base7 },

	--TermCursor = { fg = c.base1, gui = "reverse" },
	--TermCursorNC = { fg = c.base1_alt, gui = "reverse" },
	--TermNormal = { fg = c.base1, bg = c.base8 },
	--TermNormalNC = { fg = c.base1, bg = c.base8 },

	WildMenu = { fg = C.green2, bg = C.bg },
	--Separator = { fg = c.base1_alt },
	VertSplit = { fg = C.bg2, bg = C.bg },

	--TabLineFill = { bg = c.base6 },
	--TabLine = { fg = c.base3, bg = c.base6 },
	--TabLineSel = { fg = c.base2, bg = c.base8 },
}
utils.apply_highlight(general_ui)
utils.high_link("Normal", "EndOfBuffer")

-- Main Syntax
local main_syntax = {
	Tag = { fg = C.purple, gui = "bold" },
	--Link = { fg = c.base1, sp = 'undercurl' },
	--URL = { fg = c.base1, sp = 'undercurl' },
	Underlined = { sp = "underline" },

	Comment = { fg = C.fg5, gui = "italic" },
	CommentBold = { fg = C.fg5, gui = "bold" },
	SpecialComment = { fg = C.fg4, gui = "bold" },

	--Macro = { fg = c.aubergine },
	Define = { fg = C.purple },
	--Include = { fg = c.aubergine },
	PreProc = { fg = C.purple, gui = "bold" },
	--PreCondit = { fg = c.purple, gui = "bold" },

	Label = { fg = C.green3 },
	--Repeat = { fg = c.aubergine },
	Keyword = { fg = C.purple },
	Operator = { fg = C.purple },
	--Delimiter = { fg = c.base3 },
	Statement = { fg = C.purple },
	--Exception = { fg = c.aubergine },
	Conditional = { fg = C.purple },

	--Variable = { fg = c.base2 },
	--VariableBuiltin = { fg = c.sky, gui = "bold" },
	--Constant = { fg = c.turquoise, gui = "bold" },

	Number = { fg = C.orange },
	Float = { fg = C.orange },
	--Boolean = { fg = c.orange },
	--Enum = { fg = c.orange },

	Character = { fg = C.orange, gui = "bold" },
	--SpecialChar = { fg = c.orange, gui = "bold" },

	String = { fg = C.str },
	--StringDelimiter = { fg = c.green2 },

	Special = { fg = C.fg },
	--SpecialBold = { fg = c.aubergine, gui = "bold" },

	--Field = { fg = c.aubergine },
	--Argument = { fg = c.base3 },
	--Attribute = { fg = c.base3 },
	Identifier = { fg = C.fg, gui = "italic" },
	--Property = { fg = c.purple },
	Function = { fg = C.green },
	--FunctionBuiltin = { fg = c.sky, gui = "bold" },
	--KeywordFunction = { fg = c.sky, gui = "italic" },
	--Method = { fg = c.aubergine },

	Type = { fg = C.yellow },
	--TypeBuiltin = { fg = c.leaf, gui = "bold" },
	StorageClass = { fg = C.yellow, gui = "italic" },
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
	IncSearch = { fg = C.bg, bg = C.base1 },
	--IncSearchCursor = { gui = "reverse" },

	--Conceal = { fg = c.base6, gui = "none" },
	--SpecialKey = { fg = c.fg2, gui = "bold" },
	SpecialKey = { fg = C.fg2, bg = C.bg2 },
	NonText = { fg = C.bg4, bg = C.bg },
	--MatchParen = { fg = c.base1, bg = c.base5, gui = "bold" },
	MatchParen = { fg = C.red, gui = "underline" },
	--Whitespace = { fg = c.base5 },

	--Highlight = { bg = c.sap },
	--HighlightSubtle = { bg = c.base6 },

	--Question = { fg = c.turquoise, gui = "bold" },

	--File = { fg = c.base4 },
	Directory = { fg = C.orange },
	Title = { fg = C.fg, gui = "bold" },

	Bold = { gui = "bold" },
	--Emphasis = { fg = c.turquoise, gui = "bold" },
}
utils.apply_highlight(search_high_ui)

-- Text levels
local text_colors = {
	Normal = C.fg,
	Info = C.pink,
	Success = C.green,
	Warning = C.copper,
	Debug = C.orange,
	Error = C.red,
	Special = C.purple,
	Muted = C.fg5,
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
	-- todo: check diff text in diff line again
	diffLine = { fg = C.fg, bg = C.purple2 },
	diffSubName = { fg = C.fg, bg = C.purple2 },

	DiffAdd = { bg = utils.Mix(C.green, C.bg2, 0.9) },
	DiffChange = { bg = utils.Mix(C.orange, C.bg2, 0.9) },
	DiffText = { fg = C.copper },
	DiffDelete = { bg = utils.Mix(C.red, C.bg2, 0.9) },

	DiffAdded = {
		fg = utils.Mix(C.green, C.bg2, 0.9),
		bg = utils.Mix(C.green, C.bg2, 0.9),
	},
	DiffModified = {
		fg = C.base1,
		bg = utils.Mix(C.copper, C.bg2, 0.8),
	},
	DiffRemoved = {
		fg = utils.Mix(C.red, C.bg2, 0.9),
		bg = utils.Mix(C.red, C.bg2, 0.9),
	},

	DiffAddedGutter = { fg = C.green, gui = "bold" },
	DiffModifiedGutter = { fg = C.copper, gui = "bold" },
	DiffRemovedGutter = { fg = C.red, gui = "bold" },

	DiffAddedGutterLineNr = { fg = C.green },
	DiffModifiedGutterLineNr = { fg = C.copper },
	DiffRemovedGutterLineNr = { fg = C.red },
}
utils.high_clear("DiffAdd")
utils.high_clear("DiffChange")
utils.high_clear("DiffText")
utils.high_clear("DiffDelete")
utils.apply_highlight(diff)
