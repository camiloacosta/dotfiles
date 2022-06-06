Plug 'airblade/vim-rooter'

function! VimRooterSetup()
  autocmd BufEnter * :Rooter
endfunction
