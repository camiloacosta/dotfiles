let g:mapleader = ' '

nnoremap <leader> <Nop>
nmap <leader>s :w<CR>                         " Save file
nnoremap <leader>q <C-w>c                     " Close current buffer
nnoremap <leader><Bar> :vsplit<CR>            " Split vertically
nnoremap <leader>b :call NvimTreeOpenOrToggle()<CR>
nnoremap <leader>t :Telescope buffers<CR>
nnoremap gf <C-w>gf                           " Go to file on new tab

" ---
" --- Plugins maps
" ---

" --- ToggleTerm
inoremap <C-\> <Esc><Cmd>ToggleTerm dir=git_dir direction=float<CR>
nnoremap <C-\> :ToggleTerm dir=git_dir direction=float<CR>
tnoremap <C-\> <Cmd>ToggleTerm<CR>

