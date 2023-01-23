-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwplugin = 1

-- make sure to set `mapleader` keybindings and lazy so your mappings are correct
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require"camiloacosta.settings"
require"camiloacosta.keybindings"
require"camiloacosta.plugins"
