Plug 'akinsho/toggleterm.nvim', { 'tag': 'v1.*' }


function! OpenLazyGit()
lua << EOF
local Terminal = require('ToggleTerm.terminal').Terminal
local lg = Terminal:new({ cmd='lazygit', hidden=false, direction='float' })
lg:toggle()
EOF
endfunction


function! ToggleTermSetup()
  command Git call OpenLazyGit()
endfunction

