local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- wrap
opt.wrap = false -- disable line wrapping
opt.whichwrap = "[,]" -- allows left and right arrow keys to move to prev / next lines in INSERT mode. Extra: b(ackspace),s(pace),<,> - arrows in normal mode
-- tabs & indentation
opt.tabstop = 4 -- # of spaces for a tab
opt.shiftwidth = 4 -- # of spaces inserted for each indentation
opt.expandtab = true -- convert tabs to spaces
opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line, or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-") -- dash is considered a part of word

-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

opt.cmdheight = 2
opt.mouse = "a" -- allow mouse to be used in neovim
opt.mousemoveevent = true
opt.pumheight = 10 -- pop-up menu height
opt.smartindent = true
opt.scrolloff = 10 -- set # lines to be shown above and below when scrolling
opt.sidescrolloff = 8
opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
opt.backup = false -- doesn't create a backup file
opt.showtabline = 0 -- always show tabs
opt.showmode = false -- lualine shows modes, so modes don't have to show up in cmd space
opt.undofile = true -- enable persistent undo
-- option.updatetime = 100 -- faster completion (4000ms default)
opt.title = true

vim.api.nvim_set_hl(0, "Search", { fg = "#ffffff", bg = "#ffffff" })
