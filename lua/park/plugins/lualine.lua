-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine tokyonight theme
local lualine_tokyonight = require("lualine.themes.tokyonight")

-- new colors for theme
local new_colors = {
	blue = "#8DB1F9",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
}

-- change tokyonight theme colors
lualine_tokyonight.normal = {
	a = {
		gui = "bold",
		bg = new_colors.blue,
		fg = new_colors.black,
	},
}
lualine_tokyonight.insert = {
	a = {
		gui = "bold",
		bg = new_colors.green,
		fg = new_colors.black,
	},
}
lualine_tokyonight.visual = {
	a = {
		gui = "bold",
		bg = new_colors.violet,
		fg = new_colors.black,
	},
}
lualine_tokyonight.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black, -- black
	},
}

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = lualine_tokyonight,
	},
})
