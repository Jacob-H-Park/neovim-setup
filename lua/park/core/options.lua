local option = vim.opt

-- line numbers
option.relativenumber = true
option.number = true

-- wrap
option.wrap = false -- disable line wrapping
option.whichwrap = "[,]" -- allows left and right arrow keys to move to prev / next lines in INSERT mode. Extra: b(ackspace),s(pace),<,> - arrows in normal mode
-- tabs & indentation
option.tabstop = 4 -- # of spaces for a tab
option.shiftwidth = 4 -- # of spaces inserted for each indentation
option.expandtab = true -- convert tabs to spaces
option.autoindent = true

-- search settings
option.ignorecase = true
option.smartcase = true

-- cursor line
option.cursorline = true

-- appearance
option.termguicolors = true
option.background = "dark"

-- backspace
option.backspace = "indent,eol,start" -- allow backspace on indent, end of line, or insert mode start position

-- clipboard
option.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
option.splitright = true
option.splitbelow = true

option.iskeyword:append("-") -- dash is considered a part of word

-- (have to use iterm2 or any other true color terminal)
option.termguicolors = true
option.background = "dark" -- colorschemes that can be light or dark will be made dark
option.signcolumn = "yes" -- show sign column so that text doesn't shift

option.cmdheight = 2
option.mouse = "a" -- allow mouse to be used in neovim
option.mousemoveevent = true
option.pumheight = 10 -- pop-up menu height
option.smartindent = true
option.scrolloff = 10 -- set # lines to be shown above and below when scrolling
option.sidescrolloff = 8
option.guifont = "monospace:h17" -- the font used in graphical neovim applications
option.backup = false -- doesn't create a backup file
option.showtabline = 0 -- always show tabs
option.showmode = false -- lualine shows modes, so modes don't have to show up in cmd space
option.undofile = true -- enable persistent undo
-- option.updatetime = 100 -- faster completion (4000ms default)
option.title = true
