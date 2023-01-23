local builtin = require"telescope.builtin"
local get_dropdown = require"telescope.themes".get_dropdown
local km = require"camiloacosta.utils.keymap"

--- telescope keybindings
km.nmap("<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
km.nmap("<leader>lg", builtin.live_grep, { desc = "[L]ive [G]rep" })
km.nmap("<leader>lb", builtin.buffers, { desc = "[L]ist [B]uffers" })
km.nmap("<leader>fh", function()
  builtin.oldfiles(
    get_dropdown({ winblend = 20, previewer = false })
  )
end, { desc = '[F]iles [H]istory' })
