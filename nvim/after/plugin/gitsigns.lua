require"gitsigns".setup {
  on_attach = function ()
    local km = require"camiloacosta.utils.keymap"
    local gs = package.loaded.gitsigns

    km.nmap("[g", function ()
      vim.schedule(function() gs.prev_hunk() end)
      return "<Ignore>"
    end, { expr = true, desc = "Previous hunk" })

    km.nmap("]g", function ()
      vim.schedule(function() gs.next_hunk() end)
      return "<Ignore>"
    end, { expr = true, desc = "Next hunk" })

    km.nmap("<leader>hp", gs.preview_hunk, { desc = "[H]unk [P]review" })
    km.nmap("<leader>fd", gs.diffthis, { desc = "[F]ile [D]iff" })
    km.nmap("<leader>td", gs.toggle_deleted, { desc = "[T]oggle [D]eleted chunks" })

  end
}
