local km = require"camiloacosta.utils.keymap"
local icons = require"camiloacosta.utils.icons"

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
vim.fn.sign_define("DiagnosticSignError", {text =icons.danger .. " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn", {text = icons.warning .. " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo", {text = icons.info .. " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint", {text = icons.hint .. " ", texthl = "DiagnosticSignHint"})

-- Neotree keybindings
km.nmap("<leader>b", ":Neotree reveal<CR>", { desc = "Reveal Neotree" })

