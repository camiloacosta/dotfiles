Plug 'nvim-lualine/lualine.nvim'

function! LualineSetup()
lua << EOF
require('lualine').setup {
  options = {
    theme = "tokionight"
  }
}
EOF
endfunction

