local km = require"camiloacosta.utils.keymap"

km.nmap("<leader>", "<Nop>")
km.nmap("[", "<Nop>")
km.nmap("]", "<Nop>")

km.imap("jj", "<Esc>", { desc = "Exits insert mode" })
km.nmap("<leader>q", ":confirm qa<CR>", { desc = "[Q]uit [A]ll, but confirms" })
km.nmap("<leader>w", ":confirm q<CR>", { desc = "[Q]uit current buffer" })
km.nmap("<leader><Bar>", ":vsplit<CR>", { desc = "Splits buffer vertically" })

km.nmap("<Esc>", ":noh<CR>", { desc = "Stops search highlight" })

km.nmap("<", "<<", { desc = "Indent manually" })
km.nmap(">", ">>", { desc = "Indent manually" })

