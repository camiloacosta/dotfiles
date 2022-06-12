Plug 'akinsho/toggleterm.nvim', { 'tag': 'v1.*' }


function! OpenLazyGit()
lua << EOF
local Terminal = require('ToggleTerm.terminal').Terminal
local lg = Terminal:new({ cmd = 'lazygit', hidden = false, direction = 'float' })
lg:toggle()
EOF
endfunction

function! JestFile(watch = '')
  let testArgs = ['']
  if a:watch == "watch"
    call add(testArgs, "--watch")
  endif

  call add(testArgs, "--testPathPattern=" .. expand("%"))
  let t:testArgsStr = join(testArgs)
lua << EOF
local Terminal = require('ToggleTerm.terminal').Terminal
local command = 'npm t -- ' .. vim.t.testArgsStr
local jest = Terminal:new({ cmd = command, hidden = true, direction = 'horizontal', close_on_exit = false })
jest:toggle()
EOF
endfunction


function! ToggleTermSetup()
  command Git call OpenLazyGit()
  command -nargs=* Jest call JestFile(<f-args>)
endfunction

