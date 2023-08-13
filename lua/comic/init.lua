-- Vim Color Scheme
-- Name:       comic
-- Maintainer: http//github.com/PinpongTp
-- License:    The MIT License (MIT)

local colors = require("comic.colors")
local utils = require("comic.utils")

-- Set dark or light color scheme, depending on VIM background setting
c = colors.Dark
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
