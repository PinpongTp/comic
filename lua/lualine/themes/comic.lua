local colors = require("comic.colors")

-- Set dark or light color scheme, depending on VIM background setting
C = colors.Dark
if vim.opt.background:get() == "light" then
	C = colors.Light
end

return {
	normal = {
		a = { fg = C.fg, bg = C.bg4, gui = "bold" },
		b = { fg = C.fg, bg = C.bg3 },
		c = { fg = C.fg, bg = C.bg },
	},
	insert = {
		a = { fg = C.fg, bg = C.purple2, gui = "bold" },
		b = { fg = C.fg, bg = C.bg },
		c = { fg = C.fg, bg = C.bg },
	},
	visual = {
		a = { fg = C.bg, bg = C.green2, gui = "bold" },
		b = { fg = C.fg, bg = C.bg },
		c = { fg = C.fg, bg = C.bg },
	},
	replace = {
		a = { fg = C.bg, bg = C.orange, gui = "bold" },
		b = { fg = C.fg, bg = C.bg },
		c = { fg = C.fg, bg = C.bg },
	},
	command = {
		a = { fg = C.fg, bg = C.red, gui = "bold" },
		b = { fg = C.fg, bg = C.bg },
		c = { fg = C.fg, bg = C.bg },
	},
	inactive = {
		a = { fg = C.fg, bg = C.bg2, gui = "bold" },
		b = { fg = C.fg, bg = C.bg },
		c = { fg = C.fg, bg = C.bg },
	},
}
