-- [[ Globals ]]
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Options ]]
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.showmode = false
vim.opt.clipboard = 'unnamedplus'
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.cmd 'set spellfile=~/.config/nvim/spell/en.utf-8.add,~/.config/nvim/spell/de.utf-8.add'
vim.opt.spelllang = { 'en_us', 'de' }
vim.opt.spell = true
vim.opt.hlsearch = true
