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
C.base3 = C.yellow
C.str = C.green2
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

	Visual = { bg = utils.Mix(C.base1, C.bg, 0.6) },
	VisualBold = { bg = C.base1, gui = "bold" },

	LineNr = { fg = C.bg3, bg = C.bg },
	Cursor = { bg = C.base3 },
	CursorLine = { bg = C.bg2 },
	CursorLineNr = { fg = C.green2 },
	CursorColumn = { bg = C.bg },

	Folded = { bg = C.bg3 },
	FoldColumn = { fg = C.fg5, bg = C.bg },
	SignColumn = { fg = C.fg5, bg = C.bg },
	ColorColumn = { bg = C.bg },

	IndentGuide = { fg = C.bg4 },
	IndentGuideEven = { fg = C.bg4 },
	IndentGuideOdd = { fg = C.fg5 },

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
--utils.high_link("Normal", "EndOfBuffer")

-- Search, Highlight. Conceal, Messages
local search_high_ui = {
	Search = { bg = utils.Mix(C.base1, C.bg, 0.7), gui = "italic" },
	Substitute = { fg = C.red, gui = "strikethrough,bold" },
	IncSearch = { fg = C.bg, bg = C.base2, gui = "bold" },
	IncSearchCursor = { gui = "reverse" },

	--Conceal = { fg = c.base6, gui = "none" },
	--SpecialKey = { fg = c.fg2, gui = "bold" },
	SpecialKey = { fg = C.fg2, bg = C.bg2 },
	NonText = { fg = C.bg4, bg = C.bg },
	MatchParen = { fg = C.base3, gui = "boldunderline" },
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

--utils.high_link("Msg", "TextSuccess")
utils.high_link("Msg", "TextSpecial")
utils.high_link("MoreMsg", "TextInfo")
utils.high_link("WarningMsg", "TextWarning")
utils.high_link("Error", "TextError")
utils.high_link("ErrorMsg", "TextError")
utils.high_link("ModeMsg", "TextSpecial")
utils.high_link("Todo", "TextWarningBold")

-- Main Syntax
local main_syntax = {
	Tag = { fg = C.purple, gui = "bold" },
	--Link = { fg = C.str, sp = "undercurl" },
	URL = { fg = C.str, sp = "undercurl" },
	Underlined = { sp = "underline" },

	Comment = { fg = C.fg5, gui = "italic" },
	CommentBold = { fg = C.fg5, gui = "bold" },
	SpecialComment = { fg = C.fg4, gui = "bold" },

	--Macro = { fg = c.aubergine },
	Define = { fg = C.purple },
	Include = { fg = C.purple },
	PreProc = { fg = C.purple, gui = "bold" },
	--PreCondit = { fg = c.purple, gui = "bold" },

	Label = { fg = C.green3 },
	--Repeat = { fg = c.aubergine },
	Keyword = { fg = C.purple },
	Operator = { fg = C.purple },
	Delimiter = { fg = C.fg2 },
	Statement = { fg = C.purple },
	Exception = { fg = C.base1 },
	Conditional = { fg = C.purple },

	Variable = { fg = C.fg3 }, -- todo
	VariableBuiltin = { fg = C.fg4 },
	Constant = { fg = C.base, gui = "bold" },

	Number = { fg = C.orange },
	Float = { fg = C.orange },
	Boolean = { fg = C.orange },
	Enum = { fg = C.orange },

	Character = { fg = C.orange, gui = "bold" },
	SpecialChar = { fg = C.red, gui = "bold" },

	String = { fg = C.str },
	--StringDelimiter = { fg = C.red },

	Special = { fg = C.orange }, -- null
	--SpecialBold = { fg = C.red, gui = "bold" },

	Field = { fg = C.red },
	Argument = { fg = C.red },
	Attribute = { fg = C.base1 },
	Identifier = { fg = C.fg, gui = "italic" },
	Property = { fg = C.fg }, -- todo
	Function = { fg = C.fg },
	FunctionBuiltin = { fg = C.fg, gui = "bold" },
	KeywordFunction = { fg = C.red, gui = "italic" },
	Method = { fg = C.red },

	Type = { fg = C.yellow },
	TypeBuiltin = { fg = C.red, gui = "bold" },
	StorageClass = { fg = C.red, gui = "italic" },
	Class = { fg = C.red },
	Structure = { fg = C.green },
	Typedef = { fg = C.purple },

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

-- Markdown
--[[local markdown = {
	markdownCode = { bg = C.bg4 },
	markdownCodeBlock = { bg = C.bg4 },
	markdownH1 = { fg = C.base1, gui = "bold" },
	markdownH2 = { fg = C.base1, gui = "bold" },
	markdownH3 = { fg = C.base1, gui = "bold" },
	markdownH4 = { fg = C.base1, gui = "bold" },
	markdownH5 = { fg = C.base1, gui = "bold" },
	markdownH6 = { fg = C.base1, gui = "bold" },
	markdownLinkText = { gui = "underline" },
}
utils.apply_highlight(markdown)]]

-- LSP
local msg_underline = {
	ErrorMsgUnderline = { fg = C.red, sp = "undercurl" },
	WarningMsgUnderline = { fg = C.copper, sp = "undercurl" },
	MoreMsgUnderline = { fg = C.base1, sp = "undercurl" },
	MsgUnderline = { fg = C.base1, sp = "undercurl" },
}

utils.apply_highlight(msg_underline)
utils.high_link("LspDiagnosticsFloatingError", "ErrorMsg")
utils.high_link("LspDiagnosticsFloatingWarning", "Warning")
utils.high_link("LspDiagnosticsFloatingInformation", "MoreMsg")
utils.high_link("LspDiagnosticsFloatingHint", "Msg")
utils.high_link("LspDiagnosticsDefaultError", "ErrorMsg")
utils.high_link("LspDiagnosticsDefaultWarning", "WarningMsg")
utils.high_link("LspDiagnosticsDefaultInformation", "MoreMsg")
utils.high_link("LspDiagnosticsDefaultHint", "Msg")
utils.high_link("LspDiagnosticsVirtualTextError", "ErrorMsg")
utils.high_link("LspDiagnosticsVirtualTextWarning", "WarningMsg")
utils.high_link("LspDiagnosticsVirtualTextInformation", "MoreMsg")
utils.high_link("LspDiagnosticsVirtualTextHint", "Msg")
utils.high_link("LspDiagnosticsUnderlineError", "ErrorMsgUnderline")
utils.high_link("LspDiagnosticsUnderlineWarning", "WarningMsgUnderline")
utils.high_link("LspDiagnosticsUnderlineInformation", "MoreMsgUnderline")
utils.high_link("LspDiagnosticsUnderlineHint", "MsgUnderline")
utils.high_link("LspDiagnosticsSignError", "ErrorMsg")
utils.high_link("LspDiagnosticsSignWarning", "WarningMsg")
utils.high_link("LspDiagnosticsSignInformation", "MoreMsg")
utils.high_link("LspDiagnosticsSignHint", "Msg")
utils.high_link("LspReferenceText", "Bold")
utils.high_link("LspReferenceRead", "Bold")
utils.high_link("LspReferenceWrite", "Bold")
utils.high_link("TermCursor", "Cursor")
utils.high_link("healthError", "ErrorMsg")
utils.high_link("healthSuccess", "Msg")
utils.high_link("healthWarning", "WarningMsg")

-- LspSaga
local lspsaga = {
	SagaShadow = { bg = C.red },
	LspSagaDiagnosticHeader = { fg = C.red },
}
utils.apply_highlight(lspsaga)
utils.high_link("LspSagaDiagnosticBorder", "Normal")
utils.high_link("LspSagaDiagnosticTruncateLine", "Normal")
utils.high_link("LspFloatWinBorder", "Normal")
utils.high_link("LspSagaBorderTitle", "Title")
utils.high_link("TargetWord", "Error")
utils.high_link("ReferencesCount", "Title")
utils.high_link("ReferencesIcon", "Special")
utils.high_link("DefinitionCount", "Title")
utils.high_link("TargetFileName", "Comment")
utils.high_link("DefinitionIcon", "Special")
utils.high_link("ProviderTruncateLine", "Normal")
utils.high_link("LspSagaFinderSelection", "Sear")
utils.high_link("DiagnosticTruncateLine", "Normal")
utils.high_link("DiagnosticError", "LspDiagnosticsDefaultError")
utils.high_link("DiagnosticWarning", "LspDiagnosticsDefaultWarning")
utils.high_link("DiagnosticInformation", "LspDiagnosticsDefaultInformation")
utils.high_link("DiagnosticHint", "LspDiagnosticsDefaultHint")
utils.high_link("DefinitionPreviewTitle", "Title")
utils.high_link("LspSagaShTruncateLine", "Normal")
utils.high_link("LspSagaDocTruncateLine", "Normal")
utils.high_link("LineDiagTuncateLine", "Normal")
utils.high_link("LspSagaCodeActionTitle", "Title")
utils.high_link("LspSagaCodeActionTruncateLine", "Normal")
utils.high_link("LspSagaCodeActionContent", "Normal")
utils.high_link("LspSagaRenamePromptPrefix", "Normal")
utils.high_link("LspSagaRenameBorder", "Bold")
utils.high_link("LspSagaHoverBorder", "Bold")
utils.high_link("LspSagaSignatureHelpBorder", "Bold")
utils.high_link("LspSagaCodeActionBorder", "Bold")
utils.high_link("LspSagaDefPreviewBorder", "Bold")
utils.high_link("LspLinesDiagBorder", "Bold")

-- NvimTree
local nvim_tree = {
	NvimTreeNormal = { fg = C.fg3 },
	NvimTreeFolderName = { fg = C.fg },
	NvimTreeFolderIcon = { fg = C.fg5 },
	NvimTreeRootFolder = { fg = C.base1 },
	NvimTreeEmptyFolderName = { fg = C.fg5, gui = "bold" },
	--NvimTreeSymlink = { fg = C.base1, gui = "underline" },
	NvimTreeExecFile = { fg = C.red, gui = "bold" },
	NvimTreeImageFile = { fg = C.red },
	NvimTreeOpenedFile = { fg = C.base2 },
	NvimTreeSpecialFile = { gui = "underline" },
	--NvimTreeMarkdownFile = { fg = C.base1, gui = "underline" },
}

utils.apply_highlight(nvim_tree)
utils.high_link("NvimTreeGitDirty", "DiffModifiedGutter")
utils.high_link("NvimTreeGitStaged", "DiffModifiedGutter")
utils.high_link("NvimTreeGitMerge", "DiffModifiedGutter")
utils.high_link("NvimTreeGitRenamed", "DiffModifiedGutter")
utils.high_link("NvimTreeGitNew", "DiffAddedGutter")
utils.high_link("NvimTreeGitDeleted", "DiffRemovedGutter")
utils.high_link("NvimTreeIndentMarker", "IndentGuide")
utils.high_link("NvimTreeOpenedFolderName", "NvimTreeOpenedFile")

utils.high_link("@type", "Structure")
utils.high_link("@type.builtin", "Type")
utils.high_link("@type.definition", "ErrorMsg")
utils.high_link("@type.qualifier", "Keyword")

utils.high_link("@function", "Function")
utils.high_link("@function.builtin", "FunctionBuiltin")
utils.high_link("@function.call", "VariableBuiltin") -- @get
utils.high_link("@function.macro", "VariableBuiltin")

utils.high_link("@variable", "Variable")
utils.high_link("@parameter", "Variable")
utils.high_link("@attribute", "Attribute")

utils.high_link("@property", "Property")
utils.high_link("@variable.builtin", "VariableBuiltin") -- test
utils.high_link("@symbol", "ErrorMsg")
