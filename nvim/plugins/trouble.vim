Plug 'folke/trouble.nvim'

  
function! TroubleSetup()
lua << EOF
require("trouble").setup {
  mode = "loclist"
}
EOF
endfunction
