Plug 'mhinz/vim-startify'

let header_padding = '        '

function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_change_to_dir = 0

let g:startify_lists = [
      \ { 'type': 'sessions', 'header': [header_padding . 'Sessions'] },
      \ { 'type': function('s:gitModified'), 'header': [header_padding . 'Git modified'] },
      \ { 'type': function('s:gitUntracked'), 'header': [header_padding . 'Git untracked'] },
      \ { 'type': 'dir', 'header': [header_padding . getcwd()] },
      \ ]

