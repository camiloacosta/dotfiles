Plug 'lewis6991/gitsigns.nvim'

function! GitSignsSetup()
lua << EOF
require('gitsigns').setup {
  signcolumn = true,
  numhl = true,
  -- linehl = true,
  -- word_diff = true,
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 500
  }
}
EOF
endfunction

