-- [[ Globals ]]
-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Disable netrw in favor of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Disable automatic keymaps for vim-doge
vim.g.doge_enable_mappings = 0

-- [[ Options ]]
-- Show line numbers
vim.opt.number = true
-- Enable mouse usage
vim.opt.mouse = 'a'
-- Do not display the current mode, let the status line handle this
vim.opt.showmode = false
-- Share the clipboard between the operating system and Neovim
vim.opt.clipboard = 'unnamedplus'
-- Break lines that are too long to be displayed in the current editors width
vim.opt.breakindent = true
-- Save undo history
vim.opt.undofile = true
-- Search case-insensitive
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Show sign column by default
vim.opt.signcolumn = 'yes'
-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
-- Set the behavior when opening new splits
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Define how certain
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- Preview replacements live as the replacement command is being typed
vim.opt.inccommand = 'split'
-- Highlight the line at that the cursor is currently
vim.opt.cursorline = true
-- Minimal number of lines below/above the cursor when scrolling
vim.opt.scrolloff = 10
-- Spell checker
vim.cmd 'set spellfile=~/.config/nvim/spell/en.utf-8.add,~/.config/nvim/spell/de.utf-8.add'
vim.opt.spelllang = { 'en_us', 'de' }
vim.opt.spell = true
-- Highlight search results
vim.opt.hlsearch = true
-- Define the width of a tab
vim.opt.tabstop = 4
