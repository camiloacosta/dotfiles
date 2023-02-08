-- Keymaps
local starter = require"mini.starter"
local km = require"camiloacosta.utils.keymap"

km.nmap("<C-Home>", starter.open, { desc = "Open Startup screen" })
