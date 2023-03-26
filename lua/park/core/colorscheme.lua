local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
if not status then
	print("Colorscheme not found!")
	return
end

vim.api.nvim_set_hl(0, "Search", { bg = "red", fg = "white" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "turquoise2", fg = "white", bold = true })
