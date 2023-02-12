local o = vim.opt
local g = vim.g

-- Disable nvim intro
o.shortmess:append 'sI'

g.mapleader = ' '
g.maplocalleader = ' '

-- numbers
o.number = true
o.relativenumber = true
o.numberwidth = 2
o.ruler = false

-- indenting
o.expandtab = true
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4

-- backup
o.backup = false
o.writebackup = false
o.swapfile = false
o.undofile = true

o.laststatus = 3 -- global statusline
o.showmode = false

o.title = true
o.clipboard = 'unnamedplus'
o.cursorline = true
o.cursorcolumn = true
o.termguicolors = true

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8
o.sidescrolloff = 8 -- Columns of context

o.wrap = false -- Disable line wrap
o.signcolumn = 'yes'
o.colorcolumn = '80'

o.splitbelow = true
o.splitright = true

o.fillchars = { eob = ' ' }
o.list = true -- Show some invisible characters (tabs...
o.mouse = 'a'

-- Completion
o.wildmode = 'longest:full,full' -- Command-line completion mode
o.completeopt = 'menu,menuone,noselect'
o.pumheight = 10

o.timeoutlen = 400

-- interval for writing swap file to disk, also used by gitsigns
o.updatetime = 50

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
o.whichwrap:append '<>[]hl'

