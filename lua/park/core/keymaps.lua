vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.keymap

-- general kepmaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x') -- x deletes, but doesn't save the deleted letter in the buffer
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>_", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split windows vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split windows horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close CURRENT split window
keymap.set("n", "<C-Up>", ":resize +2<CR>")
keymap.set("n", "<C-Down>", ":resize -2<CR>")
keymap.set("n", "<C-Left>", ":vertical resize +2<CR>")
keymap.set("n", "<C-Right>", ":vertical resize -2<CR>")

keymap.set("n", "<C-d>", "<C-d>zz") -- centers the cursor while scrolling
keymap.set("n", "<C-u>", "<C-u>zz")

-- navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<S-h>", ":bprevious<CR>")
keymap.set("n", "<leader>bo", ":tabnew<CR>") -- open new buffer
keymap.set("n", "<leader>bx", ":tabclose<CR>") -- close current buffer
keymap.set("n", "<leader>bn", ":tabn<CR>") -- go to next buffer
keymap.set("n", "<leader>bp", ":tabp<CR>") -- go to previous buffer
-- Visual Mode --
-- Stay in Indent Mode instead of Moving Tabbing Once --
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Move Text Up and Down --
keymap.set("n", "∆", "<Esc>:m .+1<CR>==", opts) -- alt or option + k
keymap.set("n", "˚", "<Esc>:m .-2<CR>==", opts) -- alt or option + j
keymap.set("x", "K", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "J", ":move '<-2<CR>gv-gv", opts)
keymap.set("x", "∆", ":move '>+1<CR>gv-gv", opts)
keymap.set("x", "˚", ":move '<-2<CR>gv-gv", opts)
----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
-- keymap.set("n", "<leader>=", ":NvimTreeResize +5<CR>")
-- keymap.set("n", "<leader>-", ":NvimTreeResize -5<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })
-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
--
-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
