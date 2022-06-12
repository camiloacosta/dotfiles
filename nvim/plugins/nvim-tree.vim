Plug 'kyazdani42/nvim-tree.lua'

function! NvimTreeSetup()
lua << EOF
local nvim = require('nvim-tree')

nvim.setup {
  open_on_tab = false, -- keep this on false, but remap enter to open on new tab
  view = {
    width = 35,
    mappings = {
      list = {
        { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "tabnew" }
      }
    }
  },
  renderer = {
    indent_markers = {
      enable = true
    }
  },
  update_focused_file = {
    enable = true,
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
}
EOF
endfunction


" Focus on the tree, but closes if already focused
function! NvimTreeOpenOrToggle()
lua <<EOF
local nvt = require('nvim-tree')
local nvt_view = require('nvim-tree.view')
local get_buffer_name = vim.api.nvim_buf_get_name

local buffer = nvt_view.get_bufnr() or 0

if nvt_view.is_visible() then
  if get_buffer_name(buffer) ~= get_buffer_name(0) then
    nvt_view.focus()
  else
    nvt_view.close()
  end
else
  nvt.toggle(false)
end
EOF
endfunction

