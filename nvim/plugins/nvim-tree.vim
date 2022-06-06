Plug 'kyazdani42/nvim-tree.lua'

function! NvimTreeSetup()
lua << EOF
require'nvim-tree'.setup {
  open_on_tab = true,
  view = {
    width = 35,
  }
}
EOF
endfunction


" Focus on the tree, but closes if already focused
function! NvimTreeOpenOrToggle()
lua <<EOF
local nvt_view = require('nvim-tree.view')
local win = nvt_view.get_winnr() or 0

if nvt_view.is_visible() then
  print(win, vim.api.nvim_win_get_tabpage(win), vim.api.nvim_win_get_tabpage(0))
  if vim.api.nvim_win_get_tabpage(win) ~= vim.api.nvim_win_get_tabpage(0) then
    nvt_view.focus()
  else
    nvt_view.close()
  end
else
  nvt_view.open()
end
EOF
endfunction

