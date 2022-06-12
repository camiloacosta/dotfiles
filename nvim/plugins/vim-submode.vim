Plug 'kana/vim-submode'

function! SubmodeWindow()
  call submode#enter_with('window', 'n', '', '<C-w>')
  call submode#leave_with('window', 'n', '', '<ESC>')

  for key in ['gf', 'c', 'h', 'j', 'k', 'l', '-', '=', '<Up>', '<Right>', '<Down>', '<Left>']
    " map lower and upper case
    call submode#map('window', 'n', '', key, '<C-w>' . key)
    call submode#map('window', 'n', '', toupper(key), '<C-w>' . toupper(key))
  endfor

  call submode#map('window', 'n', '', '\\', '<C-w><Bar>')
  call submode#map('window', 'n', '', '\', ':vertical resize 80<CR>')
  call submode#map('window', 'n', '', '+', '3<C-w>+')
  call submode#map('window', 'n', '', '<', '5<C-w><')
  call submode#map('window', 'n', '', '>', '5<C-w>>')
endfunction

function! SubmodeMoveLines()
  call submode#enter_with('MoveLines', 'n', '', '<ctrl><shift>')
endfunction

function! TabChanging()
  call submode#enter_with('TabChanging', 'n', '', '<leader><Tab>')

  call submode#map('TabChanging', 'n', '', '<Right>', ':BufferLineCycleNext<CR>')
  call submode#map('TabChanging', 'n', '', '<Left>', ':BufferLineCyclePrev<CR>')
endfunction

function! EasyQuitBuffer()
  call submode#enter_with('EasyQuitFile', 'n', '', '<leader>q')

  call submode#map('EasyQuitFile', 'n', '', 'q', '<C-w>c')
endfunction




function! SubmodeSetup()
  let g:submode_always_show_submode = 1

  " ---
  " --- Window Management
  " ---
  call SubmodeWindow()

  " ---
  " --- Move Lines 
  " ---
  " call SubmodeMoveLines()

 " ---
  " --- Change of tabs
  " ---
  call TabChanging()

  " ---
  " --- Close tabs
  " ---
  " call EasyQuitBuffer()

endfunction
