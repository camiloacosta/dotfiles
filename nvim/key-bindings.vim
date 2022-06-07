let g:mapleader = ' '

nnoremap <Esc> :nohlsearch<CR>
nnoremap <leader> <Nop>
nmap <leader>s :w<CR>                         " Save file
nnoremap <leader>w <C-w>c                     " Close current buffer
nnoremap <leader>q :confirm qa<CR>            " Close current buffer
nnoremap <leader><Bar> :vsplit<CR>            " Split vertically
nnoremap <leader>b :call NvimTreeOpenOrToggle()<CR>
nnoremap <leader>t :Telescope git_files<CR>
nnoremap gf <C-w>gf                           " Go to file on new tab

inoremap jj <Esc>
" ---
" --- Plugins maps
" ---

" --- ToggleTerm
inoremap <C-\> <Esc><Cmd>ToggleTerm dir=git_dir direction=float<CR>
nnoremap <C-\> :ToggleTerm dir=git_dir direction=float<CR>
tnoremap <C-\> <Cmd>ToggleTerm<CR>

" --- COC
nmap <silent> gd <Plug>(coc-definition)
inoremap <silent><expr> <c-space> coc#refresh()
