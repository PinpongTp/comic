local colors = require("comic.colors")

-- Set dark or light color scheme, depending on VIM background setting
C = colors.Dark
if vim.opt.background:get() == "light" then
	C = colors.Light
end

return {
	normal = {
		a = { fg = C.base1, bg = C.bg, gui = "bold" },
		b = { fg = C.fg, bg = C.bg },
		c = { fg = C.fg, bg = C.bg },
	},
	insert = {
		a = { fg = C.base1, bg = C.bg, gui = "bold" },
		b = { fg = C.fg, bg = C.bg },
		c = { fg = C.fg, bg = C.bg },
	},
	visual = {
		a = { fg = C.base1, bg = C.bg, gui = "bold" },
		b = { fg = C.fg, bg = C.bg },
		c = { fg = C.fg, bg = C.bg },
	},
	replace = {
		a = { fg = C.base1, bg = C.bg, gui = "bold" },
		b = { fg = C.fg, bg = C.bg },
		c = { fg = C.fg, bg = C.bg },
	},
	command = {
		a = { fg = C.base1, bg = C.bg, gui = "bold" },
		b = { fg = C.fg, bg = C.bg },
		c = { fg = C.fg, bg = C.bg },
	},
	inactive = {
		a = { fg = C.fg5, bg = C.bg, gui = "bold" },
		b = { fg = C.fg5, bg = C.bg },
		c = { fg = C.fg5, bg = C.bg },
	},
}
